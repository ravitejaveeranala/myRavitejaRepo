CREATE OR REPLACE PACKAGE app_user_security_pkg AS

  FUNCTION get_hash (p_username  IN  VARCHAR2,
                     p_password  IN  VARCHAR2)
    RETURN VARCHAR2;

  PROCEDURE add_user (p_username  IN  VARCHAR2,
                      p_password  IN  VARCHAR2,
       		          p_first_name IN  VARCHAR2,
		              p_last_name  IN  VARCHAR2,
		              p_end_date in date,
		              p_role_id IN  VARCHAR2,
		              p_status out varchar2,
		              p_err_msg out varchar);

  PROCEDURE change_password (p_username      IN  VARCHAR2,
                             p_old_password  IN  VARCHAR2,
                             p_new_password  IN  VARCHAR2,
							 p_status out varchar2,
							 p_err_msg out varchar);
							 
  PROCEDURE valid_user (p_username  IN  VARCHAR2,
                        p_password  IN  VARCHAR2,
						p_status out varchar2,
						p_err_msg out varchar);

  FUNCTION valid_user (p_username  IN  VARCHAR2,
                       p_password  IN  VARCHAR2)
    RETURN BOOLEAN;

END;