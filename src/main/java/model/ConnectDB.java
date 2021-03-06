package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import org.apache.catalina.connector.Response;

public class ConnectDB {
	static final String URL = "jdbc:mysql://localhost:3306/clubs";
	static final String Login = "root";
	static final String password = "";
	static Connection cnx = null;

	public static void init() {
		try {
			cnx = (Connection) DriverManager.getConnection(URL, Login, password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());

		}

	}

	public static ArrayList<Club> getClubs() throws SQLException {
		init();
		Statement stm = (Statement) cnx.createStatement();
		String sql = "select * from club";
		ResultSet rs = stm.executeQuery(sql);
		ArrayList<Club> clubsList = new ArrayList<Club>();

		while (rs.next()) {
			int number = rs.getInt(1);
			String name = rs.getString(2);
			String PresidentName = rs.getString(3);
			Date date = rs.getDate(4);

			Club c = new Club(number, name, PresidentName, date);

			clubsList.add(c);
		}
		return clubsList;
	}

	public static int addUser(int idClub, String first_name, String last_name, String date) throws SQLException {
		init();
		Statement stm = (Statement) cnx.createStatement();
		String sql = "Insert into abonnement values(" + idClub + ",'" + first_name + "','" + last_name + "','" + date
				+ "')";
		int rs = stm.executeUpdate(sql);
		return rs;

	}

	public static ArrayList<Integer> getClubsIds() throws SQLException {
		ArrayList<Integer> clubsIdsList = new ArrayList<Integer>();
		init();
		Statement stm = (Statement) cnx.createStatement();
		String sql = "select idclub from abonnement";
		ResultSet rs = stm.executeQuery(sql);
		while (rs.next()) {
			clubsIdsList.add(rs.getInt(1));
		}

		return clubsIdsList;
	}
}
