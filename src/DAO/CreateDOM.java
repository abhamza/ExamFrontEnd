package DAO;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;

public class CreateDOM {
	
	public static Document getDOM(String test) throws SAXException,ParserConfigurationException,IOException, URISyntaxException
	{
		    Document dom=null;
		    File quizFile=null; // creer un doc null de l'exam
		    
		    quizFile=new File("C:\\quizzes\\"+test+"-quiz-1.xml"); // donner le chemin de l'exam test est donnee en 
		    
	        System.out.println("Exam Absolute lien "+quizFile.getAbsolutePath()); 
	         
	   DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
	   DocumentBuilder db=dbf.newDocumentBuilder();
	   try{
	        dom=db.parse(quizFile);
	   }catch(FileNotFoundException fileNotFound){
		   System.out.println("Error : Exam non trouvee"+fileNotFound);
	   }
	   dom.getDocumentElement().normalize();
	   return dom;
	}

}
