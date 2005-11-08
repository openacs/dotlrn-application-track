<?xml version="1.0"?>

<queryset>

<fullquery name="dotlrn_application_track::clone.call_application_track_clone">
  <querytext>
    select application_track__clone ( 
        :old_package_id,
        :new_package_id
      );
  </querytext>
</fullquery>

<fullquery name="dotlrn_application_track::remove_applet.delete_applet_from_communities">
  <querytext>

	delete from dotlrn_community_applets where applet_id = :applet_id
    
  </querytext>
</fullquery>

<fullquery name="dotlrn_application_track::remove_applet.delete_applet">
  <querytext>

	delete from dotlrn_applets where applet_id = :applet_id
    
  </querytext>
</fullquery>


</queryset>
