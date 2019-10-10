package com.stackroute.keepnote.model;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/*
 * The class "Note" will be acting as the data model for the Note data in the ArrayList.
 */
@Component
@Scope("prototype")
public class Note {

	int noteId;
	String noteTitle;
	String noteContent;
	String noteStatus;
	LocalDateTime createdAt;


	/*
	 * This class should have five fields (noteId, noteTitle, noteContent,
	 * noteStatus and createdAt). This class should also contain the getters and
	 * setters for the fields. The value of createdAt should not be accepted from
	 * the user but should be always initialized with the system date
	 */

	public Note() { }



	/* All the getters/setters definition should be implemented here */
//
//	public int getNoteId() {
//		return 0;
//
//	}
//
//	public void setNoteId(int noteId) {
//
//	}
//
//	public String getNoteTitle() {
//		return null;
//	}
//
//	public void setNoteTitle(String string) {
//
//	}
//
//	public String getNoteContent() {
//		return null;
//	}
//
//	public void setNoteContent(String string) {
//
//	}
//
//	public String getNoteStatus() {
//		return null;
//	}
//
//	public void setNoteStatus(String string) {
//
//	}
//
//	public LocalDateTime getCreatedAt() {
//		return null;
//	}
//
//	public void setCreatedAt(LocalDateTime localdatetime) {
//
//	}

	public int getNoteId() {
		return noteId;
	}

	public void setNoteId(int noteId) {
		this.noteId = noteId;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String noteContent) {
		this.noteContent = noteContent;
	}

	public String getNoteStatus() {
		return noteStatus;
	}

	public void setNoteStatus(String noteStatus) {
		this.noteStatus = noteStatus;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}






	/* Override the toString() method */

	@Override
	public String toString() {
		return noteId+" "+noteTitle+" "+noteStatus+" "+noteContent+" "+ createdAt;
	}
}