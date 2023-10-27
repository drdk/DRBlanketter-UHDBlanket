prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.3'
,p_default_workspace_id=>7353200945373601
,p_default_application_id=>113
,p_default_id_offset=>0
,p_default_owner=>'XXBLANKET'
);
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(44341824587593080)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Tilladelse til UHD-optagelse'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'RUJO'
,p_last_upd_yyyymmddhh24miss=>'20231026105711'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44351219753593137)
,p_plug_name=>'Tilladelse til UHD-optagelse'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(44126437997640311)
,p_plug_name=>'Bestilling'
,p_parent_plug_id=>wwv_flow_api.id(44351219753593137)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(44244675820593008)
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'BL_BLANKET'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44497386839279301)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_api.id(44126437997640311)
,p_button_name=>'P1_CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44317203583593052)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Indsend'
,p_button_condition=>'P1_STATUS'
,p_button_condition2=>'NEW'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44497554049279303)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_api.id(44126437997640311)
,p_button_name=>'P1_REJECT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44317203583593052)
,p_button_image_alt=>'Afvist'
,p_button_execute_validations=>'N'
,p_button_condition=>':P1_APPROVER = :APP_USER AND :P1_STATUS = ''CREATED'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(44497626869279304)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_api.id(44126437997640311)
,p_button_name=>'P1_APPROVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44317203583593052)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Godkendt'
,p_button_execute_validations=>'N'
,p_button_condition=>':P1_APPROVER = :APP_USER AND :P1_STATUS = ''CREATED'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(44611891234145202)
,p_branch_name=>'Back to 127'
,p_branch_action=>'f?p=127:1:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44361118825600525)
,p_name=>'P1_BLANKET_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'return bl_getNewBlanketID;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'BLANKET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44361387242600527)
,p_name=>'P1_CREATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'CREATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44361418855600528)
,p_name=>'P1_BLANKET_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'26460'
,p_source=>'BLANKET_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44361691820600530)
,p_name=>'P1_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'NEW'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44361777062600531)
,p_name=>'P1_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'&APP_USER.'
,p_prompt=>'Bestiller'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT full_name,username FROM bl_users;'
,p_cHeight=>1
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44361826574600532)
,p_name=>'P1_DEPARTMENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'xxdr_blanket.getUserWorkORg(:APP_USER)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('V\00E6lg afdeling')
,p_source=>'DEPARTMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select distinct navn d,navn r from BL_ORGANIZATIONS;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>100
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362053036600534)
,p_name=>'P1_PRODUKTIONSNAVN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Produktionsnavn'
,p_source=>'TEXT_ATTRIBUTE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362157313600535)
,p_name=>'P1_PROGRAMTYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Programtype'
,p_source=>'TEXT_ATTRIBUTE2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362264734600536)
,p_name=>'P1_PERIODE_FRA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Produktionsstart (cirka)'
,p_format_mask=>'DD-MM-YYYY'
,p_source=>'DATE_ATTRIBUTE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P1_PERIODE_TIL'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362332736600537)
,p_name=>'P1_PERIODE_TIL'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Produktionsafslutning (cirka)'
,p_format_mask=>'DD-MM-YYYY'
,p_source=>'DATE_ATTRIBUTE2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P1_PERIODE_FRA'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362462505600538)
,p_name=>'P1_PUBLICERINGSDATO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Publiceringsdato'
,p_format_mask=>'DD-MM-YYYY'
,p_source=>'DATE_ATTRIBUTE3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>'P1_PERIODE_TIL'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362543652600539)
,p_name=>'P1_AFSNIT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Antal afsnit'
,p_source=>'NUMBER_ATTRIBUTE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362697655600540)
,p_name=>'P1_AFSNITSLAENGDE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>unistr('Afsnitsl\00E6ngde i minutter')
,p_source=>'NUMBER_ATTRIBUTE2'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362791445600541)
,p_name=>'P1_OPTAGELSE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>unistr('Omfang af optagelse (Forventet m\00E6ngde r\00E5materiale angivet i timer)')
,p_source=>'NUMBER_ATTRIBUTE3'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44362827845600542)
,p_name=>'P1_BEGRUNDELSE'
,p_source_data_type=>'CLOB'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_prompt=>'Begrundelse for UHD-produktion'
,p_source=>'CLOB_ATTRIBUTE1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>32767
,p_cHeight=>5
,p_read_only_when=>'P1_STATUS'
,p_read_only_when2=>'NEW'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(44314713492593048)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44498025104279308)
,p_name=>'P1_APPROVER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'LANR'
,p_source=>'APPROVER1'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(44611721822145201)
,p_name=>'P1_LBNR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_source_plug_id=>wwv_flow_api.id(44126437997640311)
,p_item_default=>'return bl_getNewBlanket_Lbnr;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'LBNR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44404223341058403)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(44126437997640311)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'DML,Bestilling'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44497386839279301)
,p_process_success_message=>' '
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44497496079279302)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P1_CREATE_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    pResult varchar2(1);',
'    pMessage varchar2(1000);',
'    ',
'begin',
'    xxdr_blanket.process_blanket(:p1_blanket_id,''CREATE'',pResult,pMessage);',
'    ',
'    if pResult = ''E'' then',
'        apex_error.add_error(p_message => pMessage,p_display_location => apex_error.c_inline_in_notification);',
'    else',
'        null;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44497386839279301)
,p_process_success_message=>'Anmodningen er oprettet'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44497797126279305)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P1_APPROVE_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    pResult varchar2(1);',
'    pMessage varchar2(1000);',
'    ',
'begin',
'    xxdr_blanket.process_blanket(:p1_blanket_id,''APPROVE'',pResult,pMessage);',
'    ',
'    if pResult = ''E'' then',
'        apex_error.add_error(p_message => pMessage,p_display_location => apex_error.c_inline_in_notification);',
'    else',
'        null;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44497626869279304)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44497832555279306)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P1_REJECT_CLICK'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    pResult varchar2(1);',
'    pMessage varchar2(1000);',
'    ',
'begin',
'    xxdr_blanket.process_blanket(:p1_blanket_id,''REJECT'',pResult,pMessage);',
'    ',
'    if pResult = ''E'' then',
'        apex_error.add_error(p_message => pMessage,p_display_location => apex_error.c_inline_in_notification);',
'    else',
'        null;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(44497554049279303)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(44404317461058404)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(44126437997640311)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Init,Bestilling'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
