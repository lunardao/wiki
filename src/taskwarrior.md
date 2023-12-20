# Taskwarrior

Task warrior is a task manager which is free and open source. It can be synced between devices and git. There are many options for customization.

## Download 

- [Download & installation](https://taskwarrior.org/download/)
- [Configuration](https://taskwarrior.org/docs/configuration/)

## Usage

All commands can be found by using `task help` or `task report` for basic commands. Check taskwarrior's [documentation](https://taskwarrior.org/docs/commands/) for a more complete walkthrough. Here are some useful commands to get started. 

**add task**

- Add task without any other variables.

`task add <name of task>`

**assign priority to task**

- Priority is a subjective value assigned to a task that indicates its relative importance or order of execution compared.  
- The task priority can be set to H (high), M (medium) or L (low).  

`task <number> modify priority:H`
`task <number> modify priority:L`
`task <number> modify priority:M`

- There is also a column in taskwarrior which is called *Urg*.  
Urgency is an objective value calculated by Taskwarrior based on various factors such as due dates, priority, and waiting status. To see the most urgent task use `task next`.

**create new task and when it is due to be finished**

`task add <name of task> due:eom`

- eom --> end of month.
- today --> todays date will appear.
- tomorrow --> tomorrows date will appear.  
- eoww --> means end of work week and will give the date of the following friday.  
- For a specific date the format is the YYYY-MM-DD.  
- To remove a due date use modify and leave due empty. Also see *modify tasks*.

`task <number> modify due:`

- For a calendar overview of tasks and when they need to be completed.

`task calendar`

**start task**

`task <number> start`
- All tasks when created will be assigned a number.  

**stop task**

- To change status of a task from active to inactive.

`task <number> stop`

**delete task**

`task <number> delete`

- It's also possible also use `task <number> purge` instead of delete to completely remove task rather than change status to deleted.

**when a task is completed**

`task <number> done`  

- To see completed tasks: `task completed`.

**modify tasks**

- All tasks when created will be assigned a number.  
- To modify the tasks:

`tasks <number> modify <what you want to modify>`, for example 
to change the priority to a more urgent task (or vice versa).  

`task <number> modify Priority:H`

**add tags**

- Tags can be added like this:  

`+<name of tag>`  

- Remove tag --> `-<name of tag>`.  

`task <number> modify -<name of tag>`

**edit task details**

`task <number> edit`

**list of tasks**

`task list`

- See all tasks including those deleted or completed.

`task all`

**details about task**

`task <number>`

**create tasks within a project**

`task add learn veracrypt project:'privacy'`

- Find tasks without project.

`task project: list`

- List existing projects.

`task projects`

**show tasks added within a certain time frame**

- Tasks added the past four days. Change four to something else depending on what you want to see.

`task entry.after:today-4days list`

- Tasks added yesterday.

`task entry:yesterday list`

- Tasks added the last hour. Change one to another number as needed.

`task entry.after:now-1hour list`

**graph of pending, started and completed tasks**

- Per day.

`task burndown.daily`

- Per week.

`task burndown.weekly`

- Per month.

`task burndown.monthly`

## Other resources

Here are educational videos on how to install and use Taskwarrior.  
- Bill Hertzing on [how to install & use Taskwarrior](https://yt.artemislena.eu/playlist?list=PLI4gKGOkRTj37BHpZnFBVHDsa3J-dAUVF).  
- Samuel Chan teaches both [usage and configurations](https://yt.artemislena.eu/watch?v=rRTnF-EMey0).