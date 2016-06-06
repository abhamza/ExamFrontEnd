package Metier;

import java.util.Date;
import java.util.Objects;

public class User {
	
	private String firstName;
    private String lastName;
    private Date dateOfBirth;
    private String email;
    private String password;
    
  
    
    public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(String firstName, String lastName, Date dateOfBirth, String email, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.email = email;
		this.password = password;
	}







	public String getFirstName() {
		return firstName;
	}







	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}







	public String getLastName() {
		return lastName;
	}







	public void setLastName(String lastName) {
		this.lastName = lastName;
	}







	public Date getDateOfBirth() {
		return dateOfBirth;
	}







	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}







	public String getEmail() {
		return email;
	}







	public void setEmail(String email) {
		this.email = email;
	}







	public String getPassword() {
		return password;
	}







	public void setPassword(String password) {
		this.password = password;
	}







	public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null)
        {
            return false;
        }
        if (getClass() != obj.getClass())
        {
            return false;
        }
        final User other = (User) obj;
        if ( ! Objects.equals(this.firstName, other.firstName))
        {
            return false;
        }
        if ( ! Objects.equals(this.lastName, other.lastName))
        {
            return false;
        }
        if ( ! Objects.equals(this.email, other.email))
        {
            return false;
        }
       
        if ( ! Objects.equals(this.password, other.password))
        {
            return false;
        }
        if ( ! Objects.equals(this.dateOfBirth, other.dateOfBirth))
        {
            return false;
        }
        return true;
    }
    

}
