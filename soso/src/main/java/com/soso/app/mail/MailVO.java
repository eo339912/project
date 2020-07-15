package com.soso.app.mail;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class MailVO {
	String tomail;
	String title;
	String content;  
	
	
	public String getTomail() {
		return tomail;
	}
	public void setTomail(String tomail) {
		this.tomail = tomail;
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
	@Override
	public String toString() {
		return "MailVO [tomail=" + tomail + ", title=" + title + ", content=" + content + "]";
	}

	
}
