CREATE TABLE `tbl_sys_role` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_string` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `tbl_sys_role`
--

INSERT INTO `tbl_sys_role` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `role_name`, `name`, `description`, `role_string`) VALUES
('0', '11:28:46', '0', '0', NULL, '0', '超级管理员', NULL, NULL, 'super_admin'),
('1fb22ed9-2261-4cac-9884-d5dc2a895648', NULL, NULL, NULL, '2017-05-18 09:21:30', '0', '普通用户', NULL, NULL, 'normal_user');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_sys_role_function`
--

CREATE TABLE `tbl_sys_role_function` (
  `function_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `role_id` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `tbl_sys_role_function`
--

INSERT INTO `tbl_sys_role_function` (`function_id`, `role_id`) VALUES
('1-0-F0', '0'),
('1-0-F1', '0'),
('1-0-F2', '0'),
('1-0-F3', '0'),
('1-0-F4', '0'),
('1-0-F5', '0'),
('1-0-F6', '0'),
('1-0-F7', '0'),
('1-0-F8', '0'),
('1-0-F9', '0'),
('4-0-F0', '0'),
('4-0-F1', '0'),
('4-0-F2', '0'),
('0-0-F0', '0'),
('0-0-F1', '0'),
('0-0-F2', '0'),
('0-0-F3', '0'),
('0-1-F0', '0'),
('0-1-F1', '0'),
('0-1-F2', '0'),
('0-1-F3', '0'),
('0-1-F4', '0'),
('0-1-F5', '0'),
('0-2-F0', '0'),
('1-0-F9', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F0', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F1', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F2', '1fb22ed9-2261-4cac-9884-d5dc2a895648'),
('4-0-F3', '1fb22ed9-2261-4cac-9884-d5dc2a895648');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_sys_role_user`
--

CREATE TABLE `tbl_sys_role_user` (
  `user_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `role_id` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `tbl_sys_role_user`
--

INSERT INTO `tbl_sys_role_user` (`user_id`, `role_id`) VALUES
('0', '0'),
('22e37288-112e-4c82-a2a5-a1b9eb6f019c', '1fb22ed9-2261-4cac-9884-d5dc2a895648');

-- --------------------------------------------------------

--
-- 表的结构 `tbl_sys_user`
--

CREATE TABLE `tbl_sys_user` (
  `ID` varchar(100) COLLATE utf8_bin NOT NULL,
  `CODE` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `USERNAME` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `tbl_sys_user`
--

INSERT INTO `tbl_sys_user` (`ID`, `CODE`, `USERNAME`, `PASSWORD`, `altered_time`, `altered_user_id`, `created_time`, `created_user_id`, `name`, `salt`) VALUES
('0', '0', 'admin', '21232F297A57A5A743894A0E4A801FC3', NULL, NULL, NULL, '0', 'DimitriZhao', NULL),
('22e37288-112e-4c82-a2a5-a1b9eb6f019c', NULL, 'test', 'E10ADC3949BA59ABBE56E057F20F883E', '09:37:05', '0', '2017-06-14 09:36:39', '0', 'TEST', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `tbl_topic`
--

CREATE TABLE `tbl_topic` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `altered_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `altered_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_time` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `project_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `topic_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `director_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `tbl_topic`
--

INSERT INTO `tbl_topic` (`id`, `altered_time`, `altered_user_id`, `code`, `created_time`, `created_user_id`, `project_id`, `topic_name`, `name`, `comment`, `director_id`, `location`, `start_time`) VALUES
('0', NULL, NULL, '0', NULL, '0', '4', '项目4---课题0', NULL, NULL, NULL, '沈阳', '2017-08-27'),
('1', NULL, NULL, '1', NULL, '0', '5', '项目5---课题1', NULL, NULL, NULL, '深圳', '2017-12-12'),
('10', NULL, NULL, '10', NULL, '0', '11', '项目11---课题10', NULL, NULL, NULL, '上海', '2017-07-28'),
('11', NULL, NULL, '11', NULL, '0', '7', '项目7---课题11', NULL, NULL, NULL, '广州', '2017-10-08'),
('12', NULL, NULL, '12', NULL, '0', '10', '项目10---课题12', NULL, NULL, NULL, '沈阳', '2017-04-26'),
('13', NULL, NULL, '13', NULL, '0', '2', '项目2---课题13', NULL, NULL, NULL, '上海', '2016-11-10'),
('14', NULL, NULL, '14', NULL, '0', '10', '项目10---课题14', NULL, NULL, NULL, '沈阳', '2016-08-30'),
('15', NULL, NULL, '15', NULL, '0', '6', '项目6---课题15', NULL, NULL, NULL, '北京', '2017-12-09'),
('16', NULL, NULL, '16', NULL, '0', '9', '项目9---课题16', NULL, NULL, NULL, '深圳', '2017-09-25'),
('17', NULL, NULL, '17', NULL, '0', '12', '项目12---课题17', NULL, NULL, NULL, '深圳', '2017-07-19'),
('18', NULL, NULL, '18', NULL, '0', '10', '项目10---课题18', NULL, NULL, NULL, '广州', '2015-04-19'),
('19', NULL, NULL, '19', NULL, '0', '2', '项目2---课题19', NULL, NULL, NULL, '深圳', '2017-09-24'),
('2', NULL, NULL, '2', NULL, '0', '7', '项目7---课题2', NULL, NULL, NULL, '沈阳', '2017-06-25'),
('20', NULL, NULL, '20', NULL, '0', '1', '项目1---课题20', NULL, NULL, NULL, '深圳', '2015-05-13'),
('21', NULL, NULL, '21', NULL, '0', '5', '项目5---课题21', NULL, NULL, NULL, '广州', '2017-10-03'),
('22', NULL, NULL, '22', NULL, '0', '14', '项目14---课题22', NULL, NULL, NULL, '广州', '2017-10-20'),
('23', NULL, NULL, '23', NULL, '0', '14', '项目14---课题23', NULL, NULL, NULL, '广州', '2017-05-04'),
('24', NULL, NULL, '24', NULL, '0', '13', '项目13---课题24', NULL, NULL, NULL, '广州', '2016-08-13'),
('25', NULL, NULL, '25', NULL, '0', '4', '项目4---课题25', NULL, NULL, NULL, '深圳', '2017-03-09'),
('26', NULL, NULL, '26', NULL, '0', '8', '项目8---课题26', NULL, NULL, NULL, '沈阳', '2016-11-23'),
('27', NULL, NULL, '27', NULL, '0', '13', '项目13---课题27', NULL, NULL, NULL, '上海', '2017-01-10'),
('28', NULL, NULL, '28', NULL, '0', '12', '项目12---课题28', NULL, NULL, NULL, '广州', '2017-05-19'),
('29', NULL, NULL, '29', NULL, '0', '13', '项目13---课题29', NULL, NULL, NULL, '深圳', '2016-12-12'),
('3', NULL, NULL, '3', NULL, '0', '2', '项目2---课题3', NULL, NULL, NULL, '北京', '2017-10-14'),
('4', NULL, NULL, '4', NULL, '0', '4', '项目4---课题4', NULL, NULL, NULL, '北京', '2017-08-29'),
('5', NULL, NULL, '5', NULL, '0', '9', '项目9---课题5', NULL, NULL, NULL, '沈阳', '2017-01-27'),
('6', NULL, NULL, '6', NULL, '0', '7', '项目7---课题6', NULL, NULL, NULL, '沈阳', '2016-10-25'),
('7', NULL, NULL, '7', NULL, '0', '9', '项目9---课题7', NULL, NULL, NULL, '北京', '2017-06-20'),
('8', NULL, NULL, '8', NULL, '0', '6', '项目6---课题8', NULL, NULL, NULL, '北京', '2017-02-14'),
('9', NULL, NULL, '9', NULL, '0', '3', '项目3---课题9', NULL, NULL, NULL, '上海', '2017-02-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `act_evt_log`
--
ALTER TABLE `act_evt_log`
  ADD PRIMARY KEY (`LOG_NR_`);

--
-- Indexes for table `act_ge_bytearray`
--
ALTER TABLE `act_ge_bytearray`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`);

--
-- Indexes for table `act_ge_property`
--
ALTER TABLE `act_ge_property`
  ADD PRIMARY KEY (`NAME_`);

--
-- Indexes for table `act_hi_actinst`
--
ALTER TABLE `act_hi_actinst`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  ADD KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`);

--
-- Indexes for table `act_hi_attachment`
--
ALTER TABLE `act_hi_attachment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_hi_comment`
--
ALTER TABLE `act_hi_comment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_hi_detail`
--
ALTER TABLE `act_hi_detail`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  ADD KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  ADD KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  ADD KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`);

--
-- Indexes for table `act_hi_identitylink`
--
ALTER TABLE `act_hi_identitylink`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  ADD KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`);

--
-- Indexes for table `act_hi_procinst`
--
ALTER TABLE `act_hi_procinst`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  ADD KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`);

--
-- Indexes for table `act_hi_taskinst`
--
ALTER TABLE `act_hi_taskinst`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_hi_varinst`
--
ALTER TABLE `act_hi_varinst`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`),
  ADD KEY `ACT_IDX_HI_PROCVAR_TASK_ID` (`TASK_ID_`);

--
-- Indexes for table `act_id_group`
--
ALTER TABLE `act_id_group`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_id_info`
--
ALTER TABLE `act_id_info`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_id_membership`
--
ALTER TABLE `act_id_membership`
  ADD PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  ADD KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`);

--
-- Indexes for table `act_id_user`
--
ALTER TABLE `act_id_user`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_re_deployment`
--
ALTER TABLE `act_re_deployment`
  ADD PRIMARY KEY (`ID_`);

--
-- Indexes for table `act_re_model`
--
ALTER TABLE `act_re_model`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  ADD KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  ADD KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`);

--
-- Indexes for table `act_re_procdef`
--
ALTER TABLE `act_re_procdef`
  ADD PRIMARY KEY (`ID_`),
  ADD UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`);

--
-- Indexes for table `act_ru_event_subscr`
--
ALTER TABLE `act_ru_event_subscr`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  ADD KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`);

--
-- Indexes for table `act_ru_execution`
--
ALTER TABLE `act_ru_execution`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  ADD KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  ADD KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  ADD KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  ADD KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_identitylink`
--
ALTER TABLE `act_ru_identitylink`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  ADD KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  ADD KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  ADD KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  ADD KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`);

--
-- Indexes for table `act_ru_job`
--
ALTER TABLE `act_ru_job`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`);

--
-- Indexes for table `act_ru_task`
--
ALTER TABLE `act_ru_task`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  ADD KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  ADD KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`);

--
-- Indexes for table `act_ru_variable`
--
ALTER TABLE `act_ru_variable`
  ADD PRIMARY KEY (`ID_`),
  ADD KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  ADD KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  ADD KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  ADD KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`);

--
-- Indexes for table `tbl_milestone`
--
ALTER TABLE `tbl_milestone`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_jlgy4naiuflxclsndbgp8ctu8` (`project_id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_standard`
--
ALTER TABLE `tbl_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_standard_resource`
--
ALTER TABLE `tbl_standard_resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_n0r46alou8q4tpjpnctfpabjo` (`standard_id`);

--
-- Indexes for table `tbl_sys_file`
--
ALTER TABLE `tbl_sys_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_function`
--
ALTER TABLE `tbl_sys_function`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_itqdcta4ccyss9hycawsgucrm` (`menu_id`);

--
-- Indexes for table `tbl_sys_menu`
--
ALTER TABLE `tbl_sys_menu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_i69suv95ch4ud7irsd1lregqy` (`MODULE_ID`);

--
-- Indexes for table `tbl_sys_module`
--
ALTER TABLE `tbl_sys_module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_operation_log`
--
ALTER TABLE `tbl_sys_operation_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_organization`
--
ALTER TABLE `tbl_sys_organization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_organization_user`
--
ALTER TABLE `tbl_sys_organization_user`
  ADD KEY `FK_1xf5y20elkka13pumi8r2f8r4` (`organization_id`),
  ADD KEY `FK_syj426syoggn9kae85kspa0se` (`user_id`);

--
-- Indexes for table `tbl_sys_role`
--
ALTER TABLE `tbl_sys_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_role_function`
--
ALTER TABLE `tbl_sys_role_function`
  ADD KEY `FK_tgfnmsm51p1heid7qd9wcghxj` (`function_id`),
  ADD KEY `FK_2r3mx5cv4q1eu6i7oex4a7y65` (`role_id`);

--
-- Indexes for table `tbl_sys_role_user`
--
ALTER TABLE `tbl_sys_role_user`
  ADD KEY `FK_4rbt5lhjoqj0r268ur0gcurf2` (`role_id`),
  ADD KEY `FK_44m1qqntwycmydgmmdcmagdn3` (`user_id`);

--
-- Indexes for table `tbl_sys_user`
--
ALTER TABLE `tbl_sys_user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_o8dc6e1w8u4ci53fjycq0fm3q` (`project_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `act_evt_log`
--
ALTER TABLE `act_evt_log`
  MODIFY `LOG_NR_` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- 限制导出的表
--

--
-- 限制表 `act_ge_bytearray`
--
ALTER TABLE `act_ge_bytearray`
  ADD CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`);

--
-- 限制表 `act_id_membership`
--
ALTER TABLE `act_id_membership`
  ADD CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  ADD CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`);

--
-- 限制表 `act_re_model`
--
ALTER TABLE `act_re_model`
  ADD CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  ADD CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`);

--
-- 限制表 `act_ru_event_subscr`
--
ALTER TABLE `act_ru_event_subscr`
  ADD CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- 限制表 `act_ru_execution`
--
ALTER TABLE `act_ru_execution`
  ADD CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  ADD CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- 限制表 `act_ru_identitylink`
--
ALTER TABLE `act_ru_identitylink`
  ADD CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  ADD CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`);

--
-- 限制表 `act_ru_job`
--
ALTER TABLE `act_ru_job`
  ADD CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`);

--
-- 限制表 `act_ru_task`
--
ALTER TABLE `act_ru_task`
  ADD CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  ADD CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- 限制表 `act_ru_variable`
--
ALTER TABLE `act_ru_variable`
  ADD CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  ADD CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  ADD CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`);

--
-- 限制表 `tbl_standard_resource`
--
ALTER TABLE `tbl_standard_resource`
  ADD CONSTRAINT `FK_c7j3o7u37sq49med5mw7x7qq6` FOREIGN KEY (`id`) REFERENCES `tbl_sys_file` (`id`),
  ADD CONSTRAINT `FK_n0r46alou8q4tpjpnctfpabjo` FOREIGN KEY (`standard_id`) REFERENCES `tbl_standard` (`id`);

--
-- 限制表 `tbl_sys_role_user`
--
ALTER TABLE `tbl_sys_role_user`
  ADD CONSTRAINT `FK_44m1qqntwycmydgmmdcmagdn3` FOREIGN KEY (`user_id`) REFERENCES `tbl_sys_user` (`ID`),
  ADD CONSTRAINT `FK_4rbt5lhjoqj0r268ur0gcurf2` FOREIGN KEY (`role_id`) REFERENCES `tbl_sys_role` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
