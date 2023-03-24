package com.techpalle.dao;

import java.sql.*;
import java.util.ArrayList;

import com.techpalle.model.Customer;

public class CustomerDao {

	private static final String dburl = "jdbc:mysql://localhost:3306/customer_management ";
	private static final String dbusername = "root";
	private static final String dbpassword = "admin";
	
	private static Connection con = null;
	private static PreparedStatement ps = null;
	private static Statement stm = null;
	private static ResultSet rs = null;
	 
	private static final String customersListQuery = "select * from customer";
	private static final String customerInsert = "insert into customer(name, eamil, mobile) values (?,?,?)";
	private static final String customerEdit = "select * from customer where id = ?";
	private static final String customerUpdate = "update customer set name=?, eamil=?, mobile=? where id=?";
	private static final String customerDelete = "delete from customer where id = ?";
	
	
	public static void deleteCustomer(int id)
	{
		try 
		{
			con = getConnectionDef();
			ps = con.prepareStatement(customerDelete);
			ps.setInt(1, id);
			ps.executeUpdate();
			
		}
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps!=null)
				try 
				{
					ps.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			if(con!=null)
				try 
			    {
					con.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
				
		}

		
	}
	
	public static void updateCustomer(Customer c)
	{
		try
		{
			con = getConnectionDef();
			ps = con.prepareStatement(customerUpdate);
			ps.setString(1, c.getName());
			ps.setString(2, c.getEmail());
			ps.setLong(3, c.getMobile());
			ps.setInt(4, c.getId());
			ps.executeUpdate();

		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps!=null)
				try 
				{
					ps.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			if(con!=null)
				try 
			    {
					con.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
				
		}

		
	}
	
	public static Customer EditOneCustomer(int id)
	{
		Customer c = null;
		try 
		{
			con = getConnectionDef();
			ps = con.prepareStatement(customerEdit);
			ps.setInt(1, id);
			
			rs = ps.executeQuery();
			rs.next();
			
			int i = rs.getInt("id");
			String n = rs.getString("name");
			String e = rs.getString("eamil");
			long m = rs.getLong("mobile");
			
			 c = new Customer(i, n, e, m);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			if(rs!= null)
			{
				try 
				{
					rs.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
			if(ps!=null)
			{
				try 
				{
					ps.close();
				} 
				catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
			if(con!=null)
			{
				try 
				{
					con.close();
				}
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			}
		}
		return c; //returning object variable
		
	}
	
	public static void addCustomer(Customer customer)
	{
		try 
		{
			con = getConnectionDef();
			ps = con.prepareStatement(customerInsert);
			ps.setString(1, customer.getName());
			ps.setString(2, customer.getEmail());
			ps.setLong(3, customer.getMobile());
			ps.executeUpdate();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		finally
		{
			if(ps!=null)
				try 
				{
					ps.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
			if(con!=null)
				try 
			    {
					con.close();
				} 
				catch (SQLException e) 
				{
					e.printStackTrace();
				}
				
		}
	}
	
	public static Connection getConnectionDef()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(dburl, dbusername, dbpassword);
			
		}
		catch (ClassNotFoundException e) 
		{
			e.printStackTrace();
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return con;
		
	}
	
	public static ArrayList<Customer> getAllCustomers()
	{
		ArrayList<Customer> al = new ArrayList<Customer> ();
		
		try 
		{
			con = getConnectionDef();
			stm= con.createStatement();
			
			rs = stm.executeQuery(customersListQuery);
			while(rs.next())
			{
				int i = rs.getInt("id");
				String n = rs.getString("name");
				String e = rs.getString("eamil");
				long m = rs.getLong("mobile");
				
				Customer c = new Customer(i, n, e, m);
				al.add(c);
			}
		} 
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		finally
		{
			try
			{ 
				if(rs!=null)
				{
				   rs.close();
				}
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
			try 
			{
				if(stm!=null)
				{
				   stm.close();
				}
			} 
			catch (SQLException e)
			{
				e.printStackTrace();
			}
			try 
			{
				if(con!=null)
				{
				   con.close();
				}
			} 
			catch (SQLException e) 
			{
				e.printStackTrace();
			}
		}
		return al;
		
		
	}
}
