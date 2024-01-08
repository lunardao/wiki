# Taskwarrior

Task warrior is a task manager which is free and open source. It can be synced between devices and git. There are many options for customization.

## Download 

- [Download & installation](https://taskwarrior.org/download/)
- [Configuration](https://taskwarrior.org/docs/configuration/)

## Usage

All commands can be found by using `task help` or `task report` for basic commands. Check taskwarrior's [documentation](https://taskwarrior.org/docs/commands/) for a more complete walkthrough. Here are some useful commands to get started. 

**Add task**

- Add task without any other variables.

`task add <name of task>`

**Assign priority to task**

- Priority is a subjective value assigned to a task that indicates its relative importance or order of execution compared.  
- The task priority can be set to H (high), M (medium) or L (low).  

`task <number> priority:H`  
`task <number> priority:L`  
`task <number> priority:M`

- There is also a column in taskwarrior which is called *Urg*. Urgency is an objective value calculated by Taskwarrior based on various factors such as due dates, priority, and waiting status. To see the most urgent task use `task next`.

**Create new task and when it is due to be finished**

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

**Start task**

`task <number> start`

**Stop task**

`task <number> stop`  
- To change status of a task from active to inactive.

**Delete task**

`task <number> delete`

- It's also possible also use `task <number> purge` instead of delete to completely remove task rather than change status to deleted.

**When a task is completed**

`task <number> done`  

- To see completed tasks: `task completed`.

**Modify task**

- All tasks when created will be assigned a number. To modify the task:

`task <number> modify <what you want to modify>`, for example 
to change the priority to a more urgent task (or vice versa).  

`task <number> modify Priority:H`

**Add tags**

- Tags can be added like this:  

`+<name of tag>`  

- Remove tag: `-<name of tag>`.  

`task <number> modify -<name of tag>`

**Details about task**

`task <number>`

**Edit task details**

`task <number> edit`

**List of tasks**

`task list`

`task all`  
- See all tasks including those deleted or completed.

**Create task within a project**

`task add learn veracrypt project:'privacy'`

`task project: list`  
- Find tasks without project.

`task projects`  
- List existing projects.

**show tasks added within a certain time frame**

`task entry.after:today-4days list`  
- Tasks added the past four days. Change four to something else depending on how many days you want to see.

`task entry:yesterday list`  
- Tasks added yesterday.

`task entry.after:now-1hour list`  
- Tasks added the last hour. Change one to another number as needed.

**Graph of pending, started and completed tasks**

`task burndown.daily`  
- Per day.

`task burndown.weekly`  
- Per week.

`task burndown.monthly`  
- Per month.

## Other resources

Here are educational videos on how to install and use Taskwarrior.  
- Bill Hertzing on [how to install & use Taskwarrior](https://yt.artemislena.eu/playlist?list=PLI4gKGOkRTj37BHpZnFBVHDsa3J-dAUVF).  
- Samuel Chan teaches both [usage and configurations](https://yt.artemislena.eu/watch?v=rRTnF-EMey0).