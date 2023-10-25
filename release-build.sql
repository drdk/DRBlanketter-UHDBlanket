host mkdir build_scripts
cd ./build_scripts;
build make-custom-sql 113 NEW_BUILD INCREMENT_VERSION;
lb update -changelog-file ./NEW_BUILD_INCREMENT_VERSION.xml;

cd ..;
host mkdir apex
cd ./apex;
build make-apex 113;

apex export -applicationid 113 -split -exppubreports;

cd ..;
host mkdir data
cd ./data;
build make-custom-sql-ext 113 XXDR_BUILD_APP APP;

build make-custom-sql-ext 113 XXDR_BUILD_APP_CONTENT APP_CONTENT;

build make-custom-sql-ext 113 BLANKET_APP_DATA CUSTOM_SQL_EXTERNAL;

cd ..;
host mkdir scripts
cd ./scripts;
build make-custom-sql 113 POST_INSTALL_SQL CUSTOM_SQL;

build make-custom-sql 113 PRE_INSTALL_SQL CUSTOM_SQL;

build make-custom-sql 113 PRE_INSTALL_CSTRAINTS DISABLE_FK_CONSTRAINTS;

build make-custom-sql 113 PRE_INSTALL_TRIGGERS DISABLE_TRIGGERS;

build make-custom-sql 113 POST_INSTALL_CSTRAINTS ENABLE_FK_CONSTRAINTS;

build make-custom-sql 113 POST_INSTALL_TRIGGERS ENABLE_TRIGGERS;

cd ..;
--current folder
build make-custom-sql 113 DEV DB_LOGIN;

build make-custom-sql 113 PRD DB_LOGIN;

build make-custom-sql 113 TST DB_LOGIN;

build make-custom-sql 113 PRD DEPLOY;

build make-custom-sql 113 TST DEPLOY;

build make-custom-sql 113 NEW_BUILD GIT_CHECKIN;

build make-custom-sql 113 BUILD MAKE_BUILD_SCRIPT;

--current
