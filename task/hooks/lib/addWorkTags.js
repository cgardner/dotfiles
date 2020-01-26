const addWorkTags = task => {
  if (!task.hasOwnProperty("tags")) {
    return task;
  }
  if (task.tags.includes("@email") && task.tags.includes("work")) {
    const tags = [...task.tags, "@vpn", "@computer"].reduce((acc, cur) => {
      if (!acc.includes(cur)) {
        acc.push(cur);
      }
      return acc;
    }, []);
    task.tags = tags;
  }

  return task;
};
module.exports = addWorkTags;
