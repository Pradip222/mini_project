/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package travel;

import java.awt.*;

import java.awt.event.*;
import javax.swing.*;

import java.sql.*;
import static javax.swing.JFrame.EXIT_ON_CLOSE;
public class Login extends JFrame implements ActionListener{

static String args1[];
 
    JLabel lblIcon,lblIcon1,lblTitle, lblUsername,lblPassword,lblname,lbl,lbl1,lb12,lb13;
    Icon logoImage,logoImage1;
    JTextField txtUsername,txtname;
    JPasswordField txtPassword;
    JButton btnSubmit,btnReset,btnabtus;
 
    Cursor cSubmit,cReset,cabtus;
 
    Font ft;
 
    Connection con1;
    PreparedStatement stat1;
    ResultSet rest1;

	private Component frame;
 
 
    public Login(){
 
        super("Login");
        setBounds(0,0,0,0);
        setLayout(null);
 
        logoImage = new ImageIcon("imag56es.jpg");
        //logoImage1 = new ImageIcon("clg.jpg");
       
        setContentPane(new JLabel(new ImageIcon("pradip.jpg")));
        
        lbl=new JLabel("TRAVEL MANAGEMENT");
        lbl.setFont(new Font("", Font.BOLD, 35));
        lbl.setForeground(Color.white);
        lbl1=new JLabel("PROJECT BY DEPARTMENT OF COMPUTER ,"); 
        lb12=new JLabel("MATOSHRI COLLEGE OF ENGINEERING AND,");
        lb13=new JLabel("RESEARCH CENTRE, EKALHARE, NASHIK.");
        lbl1.setFont(new Font("verdana", Font.BOLD,30));
        lbl1.setForeground(Color.white);
        lb13.setFont(new Font("verdana", Font.BOLD,30));
        lb13.setForeground(Color.white);
        lb12.setFont(new Font("verdana",Font.BOLD,30));
        lb12.setForeground(Color.white);
        lblIcon = new JLabel(logoImage);
        lblIcon1 = new JLabel(logoImage1);
        lblTitle = new JLabel("ADMIN LOGIN");
        ft = new Font("Verdana",Font.BOLD,35);
 
        lblUsername = new JLabel("USERNAME");
        lblUsername.setFont(new Font("Bold", Font.ROMAN_BASELINE, 24));
        lblPassword =  new JLabel("PASSWORD");
        lblPassword.setFont(new Font("Bold", Font.ROMAN_BASELINE, 24));
 
        txtUsername = new JTextField(20);
        txtPassword = new JPasswordField(20);
        txtPassword.setEchoChar('*');
 
        txtUsername.setToolTipText("Please enter the username");
        txtPassword.setToolTipText("Please enter the Password");
 
        btnSubmit = new JButton("Submit");
        btnSubmit .setFont(new Font("Bold", Font.ROMAN_BASELINE, 20));
        btnReset = new JButton("Reset");
        btnReset.setFont(new Font("Bold", Font.ROMAN_BASELINE, 20));
        btnabtus = new JButton("About Us");
        btnabtus.setFont(new Font("Bold", Font.ROMAN_BASELINE, 20));
 
        lblTitle.setForeground(Color.white);
        lblUsername.setForeground(Color.white);
        lblPassword.setForeground(Color.white);
 
        btnSubmit.setForeground(Color.BLACK);;
        btnReset.setForeground(Color.black);;
        btnabtus.setForeground(Color.BLACK);
        cSubmit = btnSubmit.getCursor();
        cReset = btnReset.getCursor();
        cabtus=btnabtus.getCursor();
        btnSubmit.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        btnReset.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        btnabtus.setCursor(Cursor.getPredefinedCursor(Cursor.HAND_CURSOR));
        lbl1.setBounds(300,100,1100,50);
        lbl.setBounds(100,30,1300,50);
        lb12.setBounds(300,140,1100,50);
        lb13.setBounds(300,180,1100,50);
        lblIcon.setBounds(0,200,550,380);
        lblIcon1.setBounds(0,0,370,370);
        lblTitle.setBounds(550,300,400,50);
        lblTitle.setFont(ft);
        lblUsername.setBounds(420,400,150,40);
        lblPassword.setBounds(420,460,150,40);
 
        txtUsername.setBounds(610,400,250,40);
        txtPassword.setBounds(610,460,250,40);
 
        btnSubmit.setBounds(530,550,140,40);
        btnSubmit.setToolTipText("Click here to submit the data");
        btnReset.setBounds(720,550,140,40);
        btnReset.setToolTipText("Click here to reset the fields");
        btnabtus.setBounds(1630,00,310,40);
        btnabtus.setToolTipText("Click Here To Know About US");
        btnSubmit.addActionListener(this);
        btnReset.addActionListener(this);
        btnabtus.addActionListener(this);
        add(lblIcon1);
        add(lblIcon);
        add(lblUsername);
        add(lblTitle);
        add(lblPassword);
        add(txtUsername);
        add(txtPassword);
        add(btnSubmit);
        add(btnReset);
        add(btnabtus);
        add(lbl);
        add(lbl1);
        add(lb12);
        add(lb13);
        setSize(1920,1080);
        setLocation(0,0);
        setVisible(true);
 
        setDefaultCloseOperation(EXIT_ON_CLOSE);
    }
	public void actionPerformed(ActionEvent evt){
		String name=txtUsername.getText();
    	String pwd=txtPassword.getText();
        //String pwd1;           
        if(evt.getSource()==btnSubmit){
        	/*try{
                    Connection c=DriverManager.getConnection("");
                }
                catch(SQLEexception e)
                {
                    jp.showMessageDialog(this"Invalid userid or password"+jp.ERROR_MESSAGE);
                }*/
        	if(pwd.equals("password"))
        	{
                    this.hide();
        		newsoft.main(args1);
        		
        	}
        	else{
        		JOptionPane.showMessageDialog(frame, "Invalid usename or password.");
        		System.out.println("Invalid usename or password.");
        	}
        }
 
        if(evt.getSource()==btnabtus){
                    
                 
                                                
                                                
 
        }
        if(evt.getSource()==btnReset){
                    
                 
                                                
                                                txtUsername.setText("");
                                                txtPassword.setText("");
 
        }
        
        
    }
    
    public static void main(String args[]){
        args1=args;
        Login lg = new Login();
    }
}
