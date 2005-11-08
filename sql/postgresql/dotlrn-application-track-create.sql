--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--
-- The UserTracking applet for dotLRN
--
-- @author David Ortega (doa@tid.es)
-- @creation-date 2004-10-25
--

-- create the implementation
select acs_sc_impl__new (
		'dotlrn_applet',
		'dotlrn_application_track',
		'dotlrn_application_track'
);

-- add all the hooks

-- GetPrettyName
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'GetPrettyName',
	       'dotlrn_application_track::get_pretty_name',
	       'TCL'
);

-- AddApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'AddApplet',
	       'dotlrn_application_track::add_applet',
	       'TCL'
);

-- RemoveApplet
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'RemoveApplet',
	       'dotlrn_application_track::remove_applet',
	       'TCL'
);

-- AddAppletToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'AddAppletToCommunity',
	       'dotlrn_application_track::add_applet_to_community',
	       'TCL'
);

-- RemoveAppletFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'RemoveAppletFromCommunity',
	       'dotlrn_application_track::remove_applet_from_community',
	       'TCL'
);

-- AddUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'AddUser',
	       'dotlrn_application_track::add_user',
	       'TCL'
);

-- RemoveUser
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'RemoveUser',
	       'dotlrn_application_track::remove_user',
	       'TCL'
);

-- AddUserToCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'AddUserToCommunity',
	       'dotlrn_application_track::add_user_to_community',
	       'TCL'
);

-- RemoveUserFromCommunity
select acs_sc_impl_alias__new (
	       'dotlrn_applet',
	       'dotlrn_application_track',
	       'RemoveUserFromCommunity',
	       'dotlrn_application_track::remove_user_from_community',
	       'TCL'
);

-- AddPortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_application_track',
        'AddPortlet',
        'dotlrn_application_track::add_portlet',
        'TCL'
    );

-- RemovePortlet
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_application_track',
        'RemovePortlet',
        'dotlrn_application_track::remove_portlet',
        'TCL'
);

-- Clone
select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_application_track',
        'Clone',
        'dotlrn_application_track::clone',
        'TCL'
);

select acs_sc_impl_alias__new (
        'dotlrn_applet',
        'dotlrn_application_track',
        'ChangeEventHandler',
        'dotlrn_application_track::change_event_handler',
        'TCL'
);

-- Add the binding
select acs_sc_binding__new (
	    'dotlrn_applet',
	    'dotlrn_application_track'
);
