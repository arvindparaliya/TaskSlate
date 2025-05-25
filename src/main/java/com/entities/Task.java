package com.entities;

import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name = "notes")
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int id;

    @Column (length = 20000)
    private String title;

    @Column (length = 5000000)
    private String content;

    @Column
    private Date addedDate;

 
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

   
    public Task(String title, String content, Date addedDate) {
        this.title = title;
        this.content = content;
        this.addedDate = addedDate;
    }

    public Task() {
    
    }
}
