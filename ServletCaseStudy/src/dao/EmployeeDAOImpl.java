package dao;

import model.Employee;
import ultils.ConnectDB;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAOImpl implements EmployeeDAO{
    private static final String INSERT_EMPLOYEE_SQL = "INSERT INTO employee VALUES (?, ?, ?, ?, ?, ?,? , ?, ?,?,?)";

    private static final String SELECT_USER_BY_ID = "select * from EMPLOYEE where employee_id =?";
    private static final String SELECT_ALL_EMPLOYEE = "SELECT * FROM employee";
    private static final String DELETE_EMPLOYEE_SQL = "delete from EMPLOYEE where employee_id = ?;";
    private static final String UPDATE_EMPLOYEE_SQL = "update EMPLOYEE set employee_id = ?,employee_name= ?,employee_birthday=? employee_id_card =?,employee_salary=?,employee_phone=?,employee_email=?,position_id=?,education_id=?,division_id=?,username=? where employee_id = ?;";
    @Override
    public List<Employee> selectAllEmployee() {
        List<Employee> list_employee = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet=null ;
        try{
            connection = ConnectDB.getConnection();
            statement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);
            resultSet = statement.executeQuery();
            while(resultSet.next()){
                String employee_id = resultSet.getInt("employee_id")+"";
                String employee_name = resultSet.getString("employee_name")+"";
                String employee_area = resultSet.getInt("employee_area")+"";
                String employee_cost = resultSet.getDouble("employee_cost")+"";
                String employee_max_people = resultSet.getInt("employee_max_people")+"";
                String rent_type_id = resultSet.getInt("rent_type_id")+"";
                String employee_type_id = resultSet.getInt("employee_type_id")+"";
                String standard_room = resultSet.getString("standard_room");
                String description_other_convenience = resultSet.getString("description_other_convenience");
                String pool_area = resultSet.getDouble("pool_area")+"";
                String number_of_floors = resultSet.getInt("number_of_floors")+"";

                list_employee.add(new Employee(employee_id,employee_name,employee_area,employee_cost,employee_max_people,rent_type_id,employee_type_id,standard_room,description_other_convenience,pool_area,number_of_floors));
            }
        }

        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }

        }
        return list_employee;

    }

    @Override
    public Employee selectEmployeeById(String id) {
        System.out.println("ID EMPLOYEEDAO"+id);
        Employee employee =null;
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet=null ;
        try{
            connection = ConnectDB.getConnection();
            statement = connection.prepareStatement(SELECT_USER_BY_ID);
            statement.setInt(1,Integer.parseInt(id));
            resultSet = statement.executeQuery();

            while(resultSet.next()){
                String employee_id = resultSet.getInt("employee_id")+"";
                String employee_name = resultSet.getString("employee_name")+"";
                String employee_area = resultSet.getInt("employee_area")+"";
                String employee_cost = resultSet.getDouble("employee_cost")+"";
                String employee_max_people = resultSet.getInt("employee_max_people")+"";
                String rent_type_id = resultSet.getInt("rent_type_id")+"";
                String employee_type_id = resultSet.getInt("employee_type_id")+"";
                String standard_room = resultSet.getString("standard_room");
                String description_other_convenience = resultSet.getString("description_other_convenience");
                String pool_area = resultSet.getDouble("pool_area")+"";
                String number_of_floors = resultSet.getInt("number_of_floors")+"";
                employee= new Employee(employee_id,employee_name,employee_area,employee_cost,employee_max_people,rent_type_id,employee_type_id,standard_room,description_other_convenience,pool_area,number_of_floors);
            }

        }

        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }

        }
        return employee;
    }

    @Override
    public void deleteEmployee(String id) {


        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet=null ;
        try{
            connection = ConnectDB.getConnection();
            statement = connection.prepareStatement(DELETE_EMPLOYEE_SQL);
            statement.setInt(1,Integer.parseInt(id));
            statement.executeUpdate();
        }

        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }

        }
    }

    @Override
    public void updateEmployee(Employee employee) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet=null ;
        try{
            connection = ConnectDB.getConnection();
            statement = connection.prepareStatement(UPDATE_EMPLOYEE_SQL);
            statement.setInt(1,Integer.parseInt(employee.getId()));
            statement.setString(2,employee.getName());
            statement.setDate(3, Date.valueOf(employee.getBirthday()));
            statement.setInt(4,Integer.parseInt(employee.getId_card()));
            statement.setDouble(5,Double.parseDouble(employee.getSalary()));
            statement.setString(6,employee.getPhone());
            statement.setString(7,employee.getEmail());
            statement.setInt(8,Integer.parseInt(employee.getPosition_id()));
            statement.setInt(9,Integer.parseInt(employee.getEducation_id()));
            statement.setInt(10,Integer.parseInt(employee.getDivision_id()));
            statement.setString(11,employee.getEmail());
            statement.setInt(12,Integer.parseInt(employee.getId()));
            System.out.println(statement);
            statement.executeUpdate();


        }

        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }

        }
    }

    @Override
    public void insertEmployee(Employee employee) {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet=null ;
        try{
            connection = ConnectDB.getConnection();
            statement = connection.prepareStatement(INSERT_EMPLOYEE_SQL);
            statement.setInt(1,Integer.parseInt(employee.getId()));
            statement.setString(2,employee.getName());
            statement.setDate(3, Date.valueOf(employee.getBirthday()));
            statement.setInt(4,Integer.parseInt(employee.getId_card()));
            statement.setDouble(5,Double.parseDouble(employee.getSalary()));
            statement.setString(6,employee.getPhone());
            statement.setString(7,employee.getEmail());
            statement.setInt(8,Integer.parseInt(employee.getPosition_id()));
            statement.setInt(9,Integer.parseInt(employee.getEducation_id()));
            statement.setInt(10,Integer.parseInt(employee.getDivision_id()));
            statement.setString(11,employee.getEmail());
            System.out.println(statement.toString());
            statement.executeUpdate();

        }

        catch (Exception e){
            e.printStackTrace();
        }
        finally {
            try {
                if(connection!=null){
                    connection.close();
                }
                if(statement!=null){
                    statement.close();
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }

        }
    }
}
