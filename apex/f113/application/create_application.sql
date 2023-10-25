prompt --application/create_application
begin
--   Manifest
--     FLOW: 113
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>113
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'XXBLANKET')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Tilladelse til UHD-optagelse')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'TILLADELSE-TIL-UHD-OPTAGELSE')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'N'
,p_checksum_salt=>'9BAEB4F9D681ACF0799EA840CFBE23147A50AD6E49FF4DB4E05DF9F50542D49F'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(44153532303592950)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'Tilladelse til UHD-optagelse'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Tilladelse til UHD-optagelse'
,p_last_updated_by=>'RUJO'
,p_last_upd_yyyymmddhh24miss=>'20231023135003'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
,p_print_server_type=>'INSTANCE'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
);
wwv_flow_api.component_end;
end;
/
