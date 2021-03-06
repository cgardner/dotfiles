#!/usr/bin/env node
require('./lib/handleStdin')(task => {
  let tags = task.tags || [];

  const mentors = ['northon', 'greg'];

  const foundMentors = tags.filter(tag => mentors.includes(tag));
  if (foundMentors.length === 0) {
    return {
      task
    };
  }

  if (foundMentors.length > 1) {
    return {error: "Found multiple mentors"};
  }

  tags = tags.filter(tag => tag !== "northon")
    .concat("work");

  const mentor = foundMentors[0].substr(0,1).toUpperCase() + foundMentors[0].substr(1);
  const project = `CDK.1-on-1.${mentor}`
  return {
    task: {
      ...task,
      tags,
      project,
      priority: "L"
    }
  };
})
