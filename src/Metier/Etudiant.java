package Metier;

import java.util.Date;

import Enums.FiliereList;

public class Etudiant extends User{
	
	FiliereList filiere;
	
	public Etudiant() {
		super();
		// TODO Auto-generated constructor stub
	}



	public Etudiant(String firstName, String lastName, Date dateOfBirth, String email, String password) {
		super(firstName, lastName, dateOfBirth, email, password);
		// TODO Auto-generated constructor stub
	}


	
	

}
