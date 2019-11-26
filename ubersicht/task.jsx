import { css } from "uebersicht";
import moment from "./moment";

export const command = "/usr/local/bin/task +work export";

// # refreshFrequency: 10000 # every 10 sec
export const refreshFrequency = 5000;

const sort = (a, b) => parseFloat(b.urgency) - parseFloat(a.urgency);

const getOffsetClass = due => {
  const offset = moment(due).diff(moment());
  if (offset < 0) {
    return css`
      color: rgb(255, 0, 0);
    `;
  }

  if (offset === 0) {
    return css`
      color: rgb(255, 200, 0);
    `;
  }
};

const Task = ({ task, index }) => {
  const {
    tags = [],
    id,
    description,
    project = "",
    urgency,
    priority,
    due
  } = task;

  const offsetClass = getOffsetClass(due);
  const row = css`
    ${offsetClass};
    opacity: ${index * 0.05 * -1 + 1};
  `;

  return (
    <tr className={row}>
      <td>{id}</td>
      <td className={priorityClass[priority]}>{priority}</td>
      <td>{project}</td>
      <td>{description}</td>
      <td className={tagsClass}>{tags.join(" ")}</td>
      <td>{urgency}</td>
    </tr>
  );
};

export const render = ({ output, error, ...props }) => {
  if (error) {
    return (<div className={messageClass}>{error}</div>);
  }
  if (output === undefined) {
    return (<div className={messageClass}>Failed to load tasks</div>);
  }
  const jsonOutput = JSON.parse(output)
    .filter(task => task.status === "pending")
    .sort(sort)
    .slice(0, 20);

  return (
    <table className={tableClass}>
      <thead className={tableHead}>
        <tr>
          <td>ID</td>
          <td>P</td>
          <td>Project</td>
          <td>Description</td>
          <td>Tags</td>
        </tr>
      </thead>
      <tbody>
        {jsonOutput.map((task, i) => (
          <Task key={i} task={task} index={i} />
        ))}
      </tbody>
    </table>
  );
};

const messageClass = css`
  color: #FFF;
  font-family: "Roboto";
  font-size: 24pt;
`

const tableClass = css`
  color: #eee;
  font-family: "Roboto";
`;

const tableHead = css`
  font-weight: bold;
  opacity: 1;
  color: #fff;
`;

const tagsClass = css`
  color: rgb(50, 150, 50);
`;
const priorityClass = {
  H: css`
    color: rgb(150, 200, 255);
  `,
  M: css`
    color: rgb(0, 150, 255);
  `,
  L: css`
    color: rgb(0, 0, 255);
  `
};

export const className = {
  left: "20px",
  right: "20px"
};
