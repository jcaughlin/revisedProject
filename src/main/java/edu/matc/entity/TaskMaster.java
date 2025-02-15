package edu.matc.entity;

import edu.matc.util.LocalDateAttributeConverter;

import org.hibernate.annotations.Formula;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.sql.Timestamp;
import java.time.LocalDate;

/**
 * Class that gets and gets class names by interaction with Dao and database
 *
 * @author josephcaughlin
 */

@Entity
@Table(name="user_tasks_list_records")
public class TaskMaster implements java.io.Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="task_list_id_pk")
    private int userTaskKey;

    @Convert(converter=LocalDateAttributeConverter.class)
    @Column(name="task_scheduled_date")
    private LocalDate dateTaskScheduled;

    @Column(name="task_name")
    private Task taskName;

    @Column(name="task_start_time")
    private int taskStartTime;

    @Column(name="task_end_time")
    private int taskEndTime;

    @Column(name = "task_duration")
    @Formula("end_time - start_time")
    private long totalTimeSpentOnTask;

    @Column(name="task_status")
    private Boolean taskStatus;

    // No Argument Constructor
    public TaskMaster() {

    }

    /**
     *
     * @return userTaskPrimaryKey
     */
    public int getUserTaskKey() { return userTaskKey; }

    /**
     *
     * @param userTaskKey; Task Primary Key Generated by MySQL.
     */
    public void setUserTaskKey(int userTaskKey) {
        this.userTaskKey = userTaskKey;
    }

    public LocalDate getDateTaskScheduled() {
        return dateTaskScheduled;
    }

    public void setDateTaskScheduled(LocalDate dateTaskScheduled) {
        this.dateTaskScheduled = dateTaskScheduled;
    }

    /**
     *
     * @return taskName
     */
    public Task getTaskName() {
        return taskName;
    }

    /**
     *
     * @param taskName sets the name of the user task.
     */
    public void setTaskName(Task taskName) {
        this.taskName = taskName;
    }

    /**
     *
     * @return taskStartTime;
     *
     */
    public int getTaskStartTime() {
        return taskStartTime;
    }

    /**
     *
     * @param taskStartTime timestamp of time task was started.
     */
    public void setTaskStartTime(int taskStartTime) {
        this.taskStartTime = taskStartTime;
    }

    /**
     * The timestamp when the user completed the task.
     *
     * @return taskTimeAtCompletion.
     */
    public int getTaskEndTime() {
        return taskEndTime;
    }

    /**
     *
     * @param taskEndTime Timestamp at time task was completed.
     */
    public void setTaskEndTime(int taskEndTime) {
        this.taskEndTime = taskEndTime;
    }

    /**
     *
     * @return totalTimeSpentOnTask.
     */
    public long getTotalTimeSpentOnTask() {
        return totalTimeSpentOnTask;
    }

    /**
     *
     * @param totalTimeSpentOnTask Calculates the total time spent on task as the difference between taskEndTime and taskStartTime.
     */
    public void setTotalTimeSpentOnTask(long totalTimeSpentOnTask) {
        this.totalTimeSpentOnTask = totalTimeSpentOnTask;
    }


    /**
     *
     * @param taskStatus is set.
     */
    public void setTaskStatus(Boolean taskStatus){
        this.taskStatus = taskStatus;
    }

    /**
     *
     * @return taskStatusOfTask.
     */
    public Boolean getTaskStatus() {
        return taskStatus;
    }


    /**
     *
     * @return userTaskString;
     */
    public String toString() {
        String userTaskString = "Name of task: " + taskName + "\nTime Task Commenced: " + taskStartTime + "\nTime Task Completed"
                + taskEndTime + "Total Time To Complete the task";

        return userTaskString;
    }

}


