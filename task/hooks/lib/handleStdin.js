module.exports = (cb = () => {}) => {
  process.stdin.on("data", data => {
    const { task, error } = cb(JSON.parse(data));
    if (task === undefined) {
      console.error(error);
      return;
    }
    console.log(JSON.stringify(task));
  });
};
