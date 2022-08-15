using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SchoolManagementSystem.Setup
{
    public partial class TeacherAssign : System.Web.UI.Page
    {
        StudentBLL objStuBll = new StudentBLL();
        CommonDAL objc = new CommonDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                

                CommonDAL.ddlLoad(ddlTeacher, "SELECT EmployeeInfo.FirstName + ' ' + EmployeeInfo.LastName + '-' + Con_Designation.DesignationName AS TeacherName, " +
                    "EmployeeInfo.EmployeeId, Con_Designation.DesignationId FROM EmployeeInfo " +
                    "INNER JOIN " +
                    "Con_Designation ON EmployeeInfo.DesignationId = Con_Designation.DesignationId WHERE(EmployeeInfo.EmployeeType = 'Teacher')", "TeacherName", "EmployeeId");

                
            }
        
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }

        protected void ddlShift_SelectedIndexChanged(object sender, EventArgs e)
        {
            CommonDAL.ddlLoad(ddlClass, @"SELECT ClassSchedule.ClassId, Con_Class.ClassName
            FROM ClassSchedule INNER JOIN
            Con_Class ON ClassSchedule.ClassId = Con_Class.ClassId
            WHERE (Shift = '"+ddlShift.SelectedValue+ "') GROUP BY ClassSchedule.ClassId, Con_Class.ClassName "
           , "ClassName", "ClassId");
        }
        protected void ddlClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            string sqlStr = @"SELECT ClassSchedule.CScheduleId, ClassSchedule.WeekDay + ' - ' + Con_Subject.SubjectName + ' --> ' + CONVERT(varchar(5), CAST(ClassSchedule.StartTime AS time)) + ' to ' + CONVERT(varchar(5), 
            CAST(ClassSchedule.EndTime AS time))  AS Schedule
            FROM ClassSchedule INNER JOIN
            Con_Class ON ClassSchedule.ClassId = Con_Class.ClassId INNER JOIN
            Con_Subject ON ClassSchedule.SubjectId = Con_Subject.SubjectId
            WHERE (Shift = '" + ddlShift.SelectedValue + "') AND (ClassSchedule.ClassId = " + ddlClass.SelectedValue+")";

            CommonDAL.ddlLoad(ddlSchedule, sqlStr, "Schedule", "CScheduleId");
        }

        
    }
}