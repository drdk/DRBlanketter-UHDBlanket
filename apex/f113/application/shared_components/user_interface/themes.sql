prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 113
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>113
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(44320269432593062)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(44181604157592976)
,p_default_dialog_template=>wwv_flow_api.id(44161527389592967)
,p_error_template=>wwv_flow_api.id(44163058531592968)
,p_printer_friendly_template=>wwv_flow_api.id(44181604157592976)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(44163058531592968)
,p_default_button_template=>wwv_flow_api.id(44317203583593052)
,p_default_region_template=>wwv_flow_api.id(44244675820593008)
,p_default_chart_template=>wwv_flow_api.id(44244675820593008)
,p_default_form_template=>wwv_flow_api.id(44244675820593008)
,p_default_reportr_template=>wwv_flow_api.id(44244675820593008)
,p_default_tabform_template=>wwv_flow_api.id(44244675820593008)
,p_default_wizard_template=>wwv_flow_api.id(44244675820593008)
,p_default_menur_template=>wwv_flow_api.id(44256753996593013)
,p_default_listr_template=>wwv_flow_api.id(44244675820593008)
,p_default_irr_template=>wwv_flow_api.id(44240323821593006)
,p_default_report_template=>wwv_flow_api.id(44279681950593025)
,p_default_label_template=>wwv_flow_api.id(44314713492593048)
,p_default_menu_template=>wwv_flow_api.id(44318897558593052)
,p_default_calendar_template=>wwv_flow_api.id(44318935752593054)
,p_default_list_template=>wwv_flow_api.id(44312864930593046)
,p_default_nav_list_template=>wwv_flow_api.id(44303845603593041)
,p_default_top_nav_list_temp=>wwv_flow_api.id(44303845603593041)
,p_default_side_nav_list_temp=>wwv_flow_api.id(44302081102593040)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(44193003484592985)
,p_default_dialogr_template=>wwv_flow_api.id(44190273207592983)
,p_default_option_label=>wwv_flow_api.id(44314713492593048)
,p_default_required_label=>wwv_flow_api.id(44316078496593049)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(44304885495593042)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.component_end;
end;
/
