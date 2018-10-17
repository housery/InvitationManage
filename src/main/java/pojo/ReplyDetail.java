package pojo;

public class ReplyDetail {

  private int id;
  private int invid;
  private String content;
  private String author;
  private java.sql.Timestamp createdate;


  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }


  public int getInvid() {
    return invid;
  }

  public void setInvid(int invid) {
    this.invid = invid;
  }


  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }


  public String getAuthor() {
    return author;
  }

  public void setAuthor(String author) {
    this.author = author;
  }


  public java.sql.Timestamp getCreatedate() {
    return createdate;
  }

  public void setCreatedate(java.sql.Timestamp createdate) {
    this.createdate = createdate;
  }

}
