/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.51b-community-nt : Database - freecms
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`freecms` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `freecms`;

/*Table structure for table `freecms_channel` */

DROP TABLE IF EXISTS `freecms_channel`;

CREATE TABLE `freecms_channel` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `templet` varchar(50) default NULL,
  `contentTemplet` varchar(50) default NULL,
  `img` varchar(500) default NULL,
  `description` text,
  `parId` varchar(50) default NULL,
  `site` varchar(50) default NULL,
  `url` varchar(500) default NULL,
  `state` varchar(1) default NULL,
  `orderNum` int(11) default NULL,
  `clickNum` int(11) default NULL,
  `navigation` varchar(1) default NULL,
  `pagemark` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_栏目_站点` (`site`),
  CONSTRAINT `FK_栏目_站点` FOREIGN KEY (`site`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目';

/*Data for the table `freecms_channel` */

insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('15d53d41-003c-454b-b5fa-d4e4ec0c0ccc','许可证','','',NULL,'<h1 id=\"What\">\r\n	FreeCMS使用Apache License 2.0开源协议</h1>\r\n<p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Apache License<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 2.0, January 2004<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; http://www.apache.org/licenses/<br />\r\n	<br />\r\n	&nbsp;&nbsp; TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION<br />\r\n	<br />\r\n	&nbsp;&nbsp; 1. Definitions.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;License&quot; shall mean the terms and conditions for use, reproduction,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and distribution as defined by Sections 1 through 9 of this document.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Licensor&quot; shall mean the copyright owner or entity authorized by<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the copyright owner that is granting the License.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Legal Entity&quot; shall mean the union of the acting entity and all<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; other entities that control, are controlled by, or are under common<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; control with that entity. For the purposes of this definition,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;control&quot; means (i) the power, direct or indirect, to cause the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; direction or management of such entity, whether by contract or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; otherwise, or (ii) ownership of fifty percent (50%) or more of the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; outstanding shares, or (iii) beneficial ownership of such entity.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;You&quot; (or &quot;Your&quot;) shall mean an individual or Legal Entity<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; exercising permissions granted by this License.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Source&quot; form shall mean the preferred form for making modifications,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; including but not limited to software source code, documentation<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; source, and configuration files.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Object&quot; form shall mean any form resulting from mechanical<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; transformation or translation of a Source form, including but<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; not limited to compiled object code, generated documentation,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and conversions to other media types.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Work&quot; shall mean the work of authorship, whether in Source or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Object form, made available under the License, as indicated by a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copyright notice that is included in or attached to the work<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (an example is provided in the Appendix below).<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Derivative Works&quot; shall mean any work, whether in Source or Object<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; form, that is based on (or derived from) the Work and for which the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; editorial revisions, annotations, elaborations, or other modifications<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; represent, as a whole, an original work of authorship. For the purposes<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of this License, Derivative Works shall not include works that remain<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; separable from, or merely link (or bind by name) to the interfaces of,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Work and Derivative Works thereof.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Contribution&quot; shall mean any work of authorship, including<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the original version of the Work and any modifications or additions<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to that Work or Derivative Works thereof, that is intentionally<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; submitted to Licensor for inclusion in the Work by the copyright owner<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or by an individual or Legal Entity authorized to submit on behalf of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the copyright owner. For the purposes of this definition, &quot;submitted&quot;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; means any form of electronic, verbal, or written communication sent<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to the Licensor or its representatives, including but not limited to<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; communication on electronic mailing lists, source code control systems,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and issue tracking systems that are managed by, or on behalf of, the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Licensor for the purpose of discussing and improving the Work, but<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; excluding communication that is conspicuously marked or otherwise<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; designated in writing by the copyright owner as &quot;Not a Contribution.&quot;<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;Contributor&quot; shall mean Licensor and any individual or Legal Entity<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; on behalf of whom a Contribution has been received by Licensor and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; subsequently incorporated within the Work.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 2. Grant of Copyright License. Subject to the terms and conditions of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this License, each Contributor hereby grants to You a perpetual,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; worldwide, non-exclusive, no-charge, royalty-free, irrevocable<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; copyright license to reproduce, prepare Derivative Works of,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; publicly display, publicly perform, sublicense, and distribute the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work and such Derivative Works in Source or Object form.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 3. Grant of Patent License. Subject to the terms and conditions of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this License, each Contributor hereby grants to You a perpetual,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; worldwide, non-exclusive, no-charge, royalty-free, irrevocable<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (except as stated in this section) patent license to make, have made,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; use, offer to sell, sell, import, and otherwise transfer the Work,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; where such license applies only to those patent claims licensable<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by such Contributor that are necessarily infringed by their<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contribution(s) alone or by combination of their Contribution(s)<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with the Work to which such Contribution(s) was submitted. If You<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; institute patent litigation against any entity (including a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; cross-claim or counterclaim in a lawsuit) alleging that the Work<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or a Contribution incorporated within the Work constitutes direct<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or contributory patent infringement, then any patent licenses<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; granted to You under this License for that Work shall terminate<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as of the date such litigation is filed.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 4. Redistribution. You may reproduce and distribute copies of the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work or Derivative Works thereof in any medium, with or without<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; modifications, and in Source or Object form, provided that You<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meet the following conditions:<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (a) You must give any other recipients of the Work or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Derivative Works a copy of this License; and<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (b) You must cause any modified files to carry prominent notices<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stating that You changed the files; and<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (c) You must retain, in the Source form of any Derivative Works<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that You distribute, all copyright, patent, trademark, and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; attribution notices from the Source form of the Work,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; excluding those notices that do not pertain to any part of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Derivative Works; and<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (d) If the Work includes a &quot;NOTICE&quot; text file as part of its<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; distribution, then any Derivative Works that You distribute must<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; include a readable copy of the attribution notices contained<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; within such NOTICE file, excluding those notices that do not<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; pertain to any part of the Derivative Works, in at least one<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the following places: within a NOTICE text file distributed<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as part of the Derivative Works; within the Source form or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; documentation, if provided along with the Derivative Works; or,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; within a display generated by the Derivative Works, if and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wherever such third-party notices normally appear. The contents<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the NOTICE file are for informational purposes only and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; do not modify the License. You may add Your own attribution<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; notices within Derivative Works that You distribute, alongside<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or as an addendum to the NOTICE text from the Work, provided<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; that such additional attribution notices cannot be construed<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; as modifying the License.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; You may add Your own copyright statement to Your modifications and<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; may provide additional or different license terms and conditions<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for use, reproduction, or distribution of Your modifications, or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for any such Derivative Works as a whole, provided Your use,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; reproduction, and distribution of the Work otherwise complies with<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the conditions stated in this License.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 5. Submission of Contributions. Unless You explicitly state otherwise,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; any Contribution intentionally submitted for inclusion in the Work<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; by You to the Licensor shall be under the terms and conditions of<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; this License, without any additional terms or conditions.<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Notwithstanding the above, nothing herein shall supersede or modify<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the terms of any separate license agreement you may have executed<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; with Licensor regarding such Contributions.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 6. Trademarks. This License does not grant permission to use the trade<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; names, trademarks, service marks, or product names of the Licensor,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except as required for reasonable and customary use in describing the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; origin of the Work and reproducing the content of the NOTICE file.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 7. Disclaimer of Warranty. Unless required by applicable law or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; agreed to in writing, Licensor provides the Work (and each<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contributor provides its Contributions) on an &quot;AS IS&quot; BASIS,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; implied, including, without limitation, any warranties or conditions<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PARTICULAR PURPOSE. You are solely responsible for determining the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; appropriateness of using or redistributing the Work and assume any<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; risks associated with Your exercise of permissions under this License.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 8. Limitation of Liability. In no event and under no legal theory,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; whether in tort (including negligence), contract, or otherwise,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; unless required by applicable law (such as deliberate and grossly<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; negligent acts) or agreed to in writing, shall any Contributor be<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; liable to You for damages, including any direct, indirect, special,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; incidental, or consequential damages of any character arising as a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; result of this License or out of the use or inability to use the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Work (including but not limited to damages for loss of goodwill,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; work stoppage, computer failure or malfunction, or any and all<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; other commercial damages or losses), even if such Contributor<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; has been advised of the possibility of such damages.<br />\r\n	<br />\r\n	&nbsp;&nbsp; 9. Accepting Warranty or Additional Liability. While redistributing<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Work or Derivative Works thereof, You may choose to offer,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and charge a fee for, acceptance of support, warranty, indemnity,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; or other liability obligations and/or rights consistent with this<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License. However, in accepting such obligations, You may act only<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; on Your own behalf and on Your sole responsibility, not on behalf<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of any other Contributor, and only if You agree to indemnify,<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; defend, and hold each Contributor harmless for any liability<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; incurred by, or claims asserted against, such Contributor by reason<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of your accepting any such warranty or additional liability.<br />\r\n	<br />\r\n	&nbsp;&nbsp; END OF TERMS AND CONDITIONS<br />\r\n	<br />\r\n	&nbsp;&nbsp; APPENDIX: How to apply the Apache License to your work.<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To apply the Apache License to your work, attach the following<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; boilerplate notice, with the fields enclosed by brackets &quot;[]&quot;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; replaced with your own identifying information. (Don&#39;t include<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the brackets!)&nbsp; The text should be enclosed in the appropriate<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; comment syntax for the file format. We also recommend that a<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; file or class name and description of purpose be included on the<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; same &quot;printed page&quot; as the copyright notice for easier<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; identification within third-party archives.<br />\r\n	<br />\r\n	&nbsp;&nbsp; Copyright [yyyy] [name of copyright owner]<br />\r\n	<br />\r\n	&nbsp;&nbsp; Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);<br />\r\n	&nbsp;&nbsp; you may not use this file except in compliance with the License.<br />\r\n	&nbsp;&nbsp; You may obtain a copy of the License at<br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; http://www.apache.org/licenses/LICENSE-2.0<br />\r\n	<br />\r\n	&nbsp;&nbsp; Unless required by applicable law or agreed to in writing, software<br />\r\n	&nbsp;&nbsp; distributed under the License is distributed on an &quot;AS IS&quot; BASIS,<br />\r\n	&nbsp;&nbsp; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.<br />\r\n	&nbsp;&nbsp; See the License for the specific language governing permissions and<br />\r\n	&nbsp;&nbsp; limitations under the License.<br />\r\n	&nbsp;</p>','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('16ec77b8-38d9-406b-8142-92292b48ea7d','源代码','','',NULL,'','f2417969-1508-470e-862c-ae1adfcd04e7','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/source/checkout','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('43283229-fd90-4632-8614-89c8831746dd','加入FreeTeam','','',NULL,'<h1>\r\n	加入FreeTeam</h1>\r\n<p>\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>目前使用SVN来控制程序版本，如果您想加入<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>，最好先弄明白SVN的使用方法。<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>托管在google code上，google code把开发人员分成项目所有者和项目成员两种身份，他们都可以向SVN提交代码。因此如果您想向<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的SVN提交代码必须具备以下条件</p>\r\n<ul>\r\n	<li>\r\n		1.必要的职业技能水平，不一定是程序员，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>也需要前端工程师和设计师，以及文档撰写者。</li>\r\n	<li>\r\n		2.热衷于开源软件事业</li>\r\n	<li>\r\n		3.一个google的帐号:)</li>\r\n</ul>\r\n<p>\r\n	如果您觉得自己具备了这些条件，又迫不及待地想加入到<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>之中，请立即向freeteam@foxmail.com提交您的请求，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快组织人员对您的请求给予答复。邮件请按以下格式撰写:</p>\r\n<ul>\r\n	<li>\r\n		真实姓名</li>\r\n	<li>\r\n		常用电子邮件</li>\r\n	<li>\r\n		Google帐号</li>\r\n	<li>\r\n		希望从事的工作</li>\r\n	<li>\r\n		自我介绍</li>\r\n</ul>\r\n<p>\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>欢迎您的加入!</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('529669e6-2765-4091-8f2a-bb99b379c5c0','下载','','',NULL,'','f2417969-1508-470e-862c-ae1adfcd04e7','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/downloads/list','1',NULL,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('6555dd8b-7acc-4e57-a19a-cc70dd4f7135','动态','栏目信息列表.html','','','','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',0,NULL,'1','动态');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('7681f4e6-fba1-40c5-9bba-eb3c274bd499','维基','','',NULL,'','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/wiki/Wiki','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('7bdbcb40-0ca7-4bc7-91da-e8cb9c569a2b','解决方案','','',NULL,'<h1>\r\n	解决方案</h1>\r\n<h2>\r\n	政府部门网站解决方案</h2>\r\n<p>\r\n	政府部门网站解决方案倡导&quot;安全、共享、协同、应用&quot;的理念，遵循国家电子政务标准实施中&quot;统一组织领导、统一规划实施、统一标准规范、同一网络平台、统一安全管理&quot;的基本原则，充分发挥政府网站有效服务社会的应用职能，有效推进政府信息群架构进程。</p>\r\n<h2>\r\n	集团企业门户解决方案</h2>\r\n<p>\r\n	集团企业门户解决方案从&quot;集成管理、随需应变&quot;的理念出发，不但把集团的企业、集团的产品等相关信息展示给我们的客户、合作伙伴和业内同行，同时也能给他们提供一个便捷有效的反馈平台，商务平台，在网上实现在线企业的概念。使集团的业务能超越时间和空间的限制，在业内更具有竞争力。</p>\r\n<h2>\r\n	大型资讯门户整体解决方案</h2>\r\n<p>\r\n	大型资讯类门户网站最核心的部分是解决资讯来源问题，需要保证能够获取大量实时资讯内容，同时需要保证网站能够无差错不间断的稳定运行。 大型信息门户整体解决方案专为大型资讯类门户网站而设计，定时自动采集模块能够不断获取资讯内容，定时生成、定时备份等多项措施能够减轻维护人员工作量，同时经过考验的CMS系统能够为大型网站提供最佳的整体方案解决可能遇到的各种问题。</p>\r\n<h2>\r\n	大型门户CMS集成解决方案</h2>\r\n<p>\r\n	大型门户网站需要一个强大的CMS系统作为支撑，要求CMS系统不但能够管理资讯信息，同时能够将门户系统内的业务相关数据集成显示，统一纳入CMS中进行管理。 大型门户CMS集成解决方案能够将电子商务门户、行业门户网站、娱乐门户网站、证券门户网站等拥有除资讯外信息的多类网站整合到FreeCMS系统中进行维护管理，将业务数据、产品数据、信息交互等多种信息静态化，使维护大型网站不再困难。</p>\r\n<h2>\r\n	企业信息门户解决方案</h2>\r\n<p>\r\n	针对各种不同的企业，FreeCMS将为您提供全方位的网站解决方案，为您搭建一个集个性化与网下活动同步、拓展范围更广、信息及其应用范围更广的专业网络宣传与交流门户平台。</p>','f9dda97c-a26c-40a3-8a13-12db9538c864','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('7c4171d2-d677-447e-a478-16a73d9c625f','其它','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',6,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('860f8115-fdd5-438b-a445-1c27e7f6a685','常见问题解答','','',NULL,'<h1>\r\n	常见问题解答</h1>\r\n<h2>\r\n	FreeCMS公开所有源码么?</h2>\r\n<p>\r\n	FreeCMS遵守Apache License 2.0开源协议，并公开所有源码，您可以随意下载并传播源码，并可根据自己的需求进行二次开发，但<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>保留对FreeCMS的所有权。</p>\r\n<h2>\r\n	FreeCMS可以免费商用么?</h2>\r\n<p>\r\n	免费是FreeCMS的宗旨，您可以使用FreeCMS建设自己的个人站点，也可以应用于商业项目而无需商业授权。</p>','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',3,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('864e2a6a-1937-43c4-b02f-630463ea3c9b','Bug报告','','','','<h1>\r\n	Bug报告</h1>\r\n<p>\r\n	Bug 是期望之外的瑕疵，错误，缺陷，或<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的不完美之处。<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>希望知道<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>在使用中拥有哪些问题。</p>\r\n<p>\r\n	您可以发送标题如&quot;Bug报告:XXXXXX&quot;格式的邮件至freeteam@foxmail.com。</p>\r\n<p>\r\n	要使报告的信息有用，bug 报告需要尽可能详细。在提交报告或考虑报告 bug 时请根据如下指示说明：</p>\r\n<ul>\r\n	<li>\r\n		1.确保您在使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>最新版本。</li>\r\n	<li>\r\n		2.在描述问题时请包含尽可能多的相关细节。</li>\r\n	<li>\r\n		3.确定 bug 是可以重现的，即:当您重复同样操作时，问题会重复出现。请包含导致 bug 出现的操作信息。</li>\r\n	<li>\r\n		4.一个 bug 请提交一个 bug 报告；请勿在一个 bug 报告中包含众多问题。</li>\r\n	<li>\r\n		5.在提交bug报告前请检查报告内容，确保其中已经包含了所有想要表达的内容。</li>\r\n</ul>\r\n<p>\r\n	报告提交后，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快响应您的bug报告。</p>\r\n<p>\r\n	感谢您抽时间帮助<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>改进<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的功能！</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','bug');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('92897509-f7ad-4169-9cbb-8635d152fb41','关于','栏目页面.html','',NULL,'<h1 id=\"What\">\r\n	什么是FreeTeam？</h1>\r\n<p>\r\n	<trans data-src=\"The Apache HTTP Server Project is a collaborative software development\" style=\"background: none transparent scroll repeat 0% 0%\">FreeTeam开发组织是一个协同软件开发组织，致力于建立一个强大的、商业级、功能丰富和</trans><trans data-src=\"freely-available source code implementation of an HTTP (Web) server. \">免费提供源代码的开发组织。</trans><trans data-src=\"The\">本</trans><trans data-src=\"project is jointly managed by a group of volunteers located around the\">组织是由一组遍布全国的志愿者，使用互联网和网络沟通，计划和开发相关项目的。</trans><trans data-src=\"This project is part of the Apache\"></trans><trans data-src=\"In addition, hundreds of users have contributed ideas,\"></trans><trans data-src=\"code, and documentation to the project. \"><trans data-src=\"In February of 1995, the most popular server software on the Web was the\" style=\"background: none transparent scroll repeat 0% 0%\"></trans></trans></p>\r\n<p>\r\n	<trans data-src=\"If you just want to send in an occasional suggestion/fix, then you can\">\r\n	<p>\r\n		<trans data-src=\"code, and documentation to the project. \">\r\n		<h1 id=\"Involved\">\r\n			<trans data-src=\"Getting Involved\">参与</trans></h1>\r\n		<p>\r\n			<trans data-src=\"If you just want to send in an occasional suggestion/fix, then you can\">如果您有任何关于FreeTeam开发组织或其开发项目的建议或问题，您可以直接发送邮件到<a href=\"mailto:freeteam@foxmail.com\">freeteam@foxmail.com</a><news:comp.infosystems.www.servers.ms-windows>。</news:comp.infosystems.www.servers.ms-windows></trans></p>\r\n		</trans></p>\r\n	</trans></p>','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('adc2c031-42a7-4555-af57-5c9937dbbfe9','讨论','','',NULL,'','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','7a4d22d6-762b-46e5-895b-d62da52bf9cb','http://code.google.com/p/freecms/issues/list','1',5,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('b13493bc-fae7-4908-8c1f-9f4a18426222','参与','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',5,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('c2ed4a9f-fc59-4cba-91c6-098b248021ab','捐赠','','',NULL,'<h1>\r\n	捐赠</h1>\r\n<p>\r\n	开源离不开大家的支持! 有大家的支持<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>会做的更好!</p>\r\n<p>\r\n	欢迎并感谢大家对<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>进行捐赠，大家可以进入<a href=\"https://me.alipay.com/freeteam\" rel=\"nofollow\">捐赠主页</a>进行捐赠。</p>','7c4171d2-d677-447e-a478-16a73d9c625f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('c60bebab-cf84-4ba9-8c79-3dff5c2dc427','要点','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('d8aa15d1-710c-4931-8c3b-b0b2d3db3d56','贡献源码','','',NULL,'<h1>\r\n	贡献源码</h1>\r\n<p>\r\n	如果您在使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>时，感觉您的源码、功能模块、页面模板、标签、或建设建议很好，并想贡献出来，您可以发送标题如&quot;贡献源码:XXXXXX&quot;格式的邮件至freeteam@foxmail.com。</p>\r\n<p>\r\n	要使贡献的源码有用，贡献源码邮件需要尽可能详细。在提交邮件或考虑贡献源码时请根据如下指示说明：</p>\r\n<ul>\r\n	<li>\r\n		1.确保<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>最新版本没有您所贡献的源码。</li>\r\n	<li>\r\n		2.请详细描述您贡献的源码所完成的功能。</li>\r\n	<li>\r\n		3.在描述如何把源码集成到<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>时请包含尽可能多的相关细节。</li>\r\n	<li>\r\n		4.一个完整的源码包请提交一个贡献源码邮件；请勿在一个贡献源码邮件中包含众多源码包。</li>\r\n	<li>\r\n		5.在提交贡献源码邮件前请检查邮件内容，确保其中已经包含了所有想要表达的内容。</li>\r\n</ul>\r\n<p>\r\n	贡献源码邮件提交后，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快响应您的贡献源码邮件。</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	感谢您抽时间帮助<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>改进<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的功能！</p>','b13493bc-fae7-4908-8c1f-9f4a18426222','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',3,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f2417969-1508-470e-862c-ae1adfcd04e7','下载','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',2,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('f9dda97c-a26c-40a3-8a13-12db9538c864','获得支持','','',NULL,'','','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',4,NULL,'1','');
insert  into `freecms_channel`(`id`,`name`,`templet`,`contentTemplet`,`img`,`description`,`parId`,`site`,`url`,`state`,`orderNum`,`clickNum`,`navigation`,`pagemark`) values ('fba30fa6-107e-41ec-a134-50855a847857','服务支持','','',NULL,'<h1>\r\n	服务支持</h1>\r\n<p>\r\n	首先<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>感谢您选择并使用<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将为您提供全方位的持续稳定的支持服务，确保项目的可持续性，为您提供信心保障，最大化的体现项目的价值。<br />\r\n	<br />\r\n	<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提供两种服务支持方式，一种是免费支持，一种是赞助支持。</p>\r\n<h2>\r\n	免费支持</h2>\r\n<p>\r\n	免费支持面向所有用户，您可以通过以下方式获取免费支持:</p>\r\n<ul>\r\n	<li>\r\n		讨论支持：您可以直接在<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>发布您遇到的问题或解答别人的问题，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将尽快处理您所提出的问题。</li>\r\n	<li>\r\n		产品升级：针对<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的新版本，提供终生免费升级并通过<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>提供程序升级问题解答。</li>\r\n	<li>\r\n		BUG清除：清除<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>中出现的任何BUG。</li>\r\n	<li>\r\n		安全预警：当程序有重大安全隐患时，通过<a href=\"http://code.google.com/p/freecms/issues/list\" rel=\"nofollow\">讨论区</a>进行预警通知，并提供解决方案。</li>\r\n	<li>\r\n		帮助教程：使用<a href=\"http://code.google.com/p/freecms/wiki/Wiki\">Wiki</a>提供<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的教程、操作手册以及二次开发文档等相关帮助。</li>\r\n</ul>\r\n<p>\r\n	&nbsp;</p>\r\n<h2>\r\n	赞助支持</h2>\r\n<p>\r\n	赞助支持主要针对有特殊需求的用户，您需要赞助一定的费用才能得到以下相应的支持项目。</p>\r\n<h3>\r\n	基础支持</h3>\r\n<ul>\r\n	<li>\r\n		软件安装服务:500元/次。</li>\r\n	<li>\r\n		软件升级操作服务:500元/次。</li>\r\n</ul>\r\n<h3>\r\n	网站安全与服务器</h3>\r\n<ul>\r\n	<li>\r\n		服务器迁移:500元/次。</li>\r\n	<li>\r\n		系统故障诊断:300元/次。</li>\r\n	<li>\r\n		系统修复服务:300元/小时。</li>\r\n	<li>\r\n		服务器安全检测配置:800元/次。</li>\r\n	<li>\r\n		网站安全检测和设置:800元/次。</li>\r\n</ul>\r\n<h3>\r\n	培训与技术支持</h3>\r\n<ul>\r\n	<li>\r\n		软件远程培训服务:100元/小时。</li>\r\n	<li>\r\n		软件现场培训服务:600元/人天。</li>\r\n	<li>\r\n		软件上门培训服务:1000元/人天。</li>\r\n	<li>\r\n		QQ技术支持服务:2600元/年。</li>\r\n</ul>\r\n<h3>\r\n	项目应用支持</h3>\r\n<ul>\r\n	<li>\r\n		系统功能模板实现:100元/小时。</li>\r\n	<li>\r\n		模板错误诊断:100元/次。</li>\r\n	<li>\r\n		模板错误修正服务:150元/小时。</li>\r\n	<li>\r\n		模板局部修改:150元/小时。</li>\r\n	<li>\r\n		栏目架构调整:150元/小时。</li>\r\n</ul>\r\n<h3>\r\n	内容维护</h3>\r\n<ul>\r\n	<li>\r\n		信息发布:100元/小时。</li>\r\n	<li>\r\n		内容更新:100元/小时。</li>\r\n</ul>\r\n<h3>\r\n	定制服务</h3>\r\n<p>\r\n	定制服务是由<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>开发人员根据您的网站运营的实际功能需求，对<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>进行功能和模板定制开发的服务。鉴于不同站点有不同的实际具体功能需求，为了让更多的用户体验<a href=\"http://code.google.com/p/freecms/wiki/FreeCMS\">FreeCMS</a>的强大易用功能，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提供在系统基础上进行程序定制和模板定制，对于有定制需求的用户，欢迎联系定制。<br />\r\n	<br />\r\n	为了更好的服务用户，<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>针对地理位置较近的用户提供现场开发服务，赞助费用为1000元/人天。</p>\r\n<h4>\r\n	定制流程</h4>\r\n<ul>\r\n	<li>\r\n		1.用户提出建站基本需求:用户向<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>提出程序或模板定制的基本需求，包括功能实现详细要求等，并提供详细的程序定制需求说明或者参考网站。</li>\r\n	<li>\r\n		2.项目建设方案及报价款:<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>将根据用户提供的程序定制需求说明，反馈报价供用户参考。经双方交流与磋商，确定具体程序定制的内容及赞助费用。</li>\r\n	<li>\r\n		3.签订程序定制协议，用户赞助报价的50%:双方签订《程序定制协议》[可选] ，用户赞助报价的50%。相关技术人员与用户通过QQ、电子邮件、电话等方式进行交流。</li>\r\n	<li>\r\n		4.网站测试，用户上网验收:将测试网站功能文件上传至测试服务器，用户上网浏览并验收。验收项目包括：所定制的功能模块运行是否正常。验收合格后，用户签发《程序验收合格书》。</li>\r\n	<li>\r\n		5.用户赞助余款，网站建设过程结束:用户按照《程序定制协议》，支付剩余程序定制赞助费用。<a href=\"http://code.google.com/p/freecms/wiki/FreeTeam\">FreeTeam</a>在收到余款后，将相关定制程序文件递交给用户；或应用户要求将文件直接上传至客户服务器上。至此，程序定制过程全部结束。</li>\r\n</ul>','f9dda97c-a26c-40a3-8a13-12db9538c864','7a4d22d6-762b-46e5-895b-d62da52bf9cb','','1',1,NULL,'1','');

/*Table structure for table `freecms_config` */

DROP TABLE IF EXISTS `freecms_config`;

CREATE TABLE `freecms_config` (
  `code` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `configValue` varchar(500) default NULL,
  `orderNum` int(11) default NULL,
  PRIMARY KEY  (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置';

/*Data for the table `freecms_config` */

insert  into `freecms_config`(`code`,`name`,`configValue`,`orderNum`) values ('memberLimitName','会员禁用登录名(多个用,号分隔)','员禁用登录名：fdsfdsfs',NULL);

/*Table structure for table `freecms_func` */

DROP TABLE IF EXISTS `freecms_func`;

CREATE TABLE `freecms_func` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `isOk` char(1) NOT NULL,
  `orderNum` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `parId` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='功能';

/*Data for the table `freecms_func` */

insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('003c47c5-7041-4cfa-8631-82c00ab3fb35','菜单管理','1',101,'func.jsp','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('08cfd343-2803-403e-b952-f7d41199d8e1','快速添加','1',0,'cms/info_edit.do','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('0bec6b84-19be-4d99-bc44-ca1d8472148f','图片链接管理','1',4,'cms/link_list.do?link.type=2','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('12187d67-5ab9-4ae4-bbee-9a772cebd0de','用户管理','1',1,'user_list.do','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2','用户管理','1',100,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('18974989-cd85-48b2-8169-348bc3481ef8','文字链接分类','1',5,'cms/link_clazz.do?link.type=3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('19eebfb0-16b5-40eb-a909-1bd37ef7d745','站点管理','1',0,'cms/site_site.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('2403873a-48fb-48ac-acd0-af4098df1a0a','添加用户','1',0,'userEdit.jsp','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('26622672-9a10-4e4e-93a7-7fe50a9208b3','链接管理','1',5,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','角色管理','1',99,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('425d0211-0196-4456-a24b-3e8d614dec8b','信息管理','1',1,'cms/info_info.do','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('4331df96-2b8d-4dcf-9bdb-1015dfd0a759','图片链接分类','1',3,'cms/link_clazz.do?link.type=2','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('47b80631-bb6e-4abd-8e47-5b99bce8b3bd','操作日志','1',105,'operLog_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5257f8fd-9da2-4e83-8538-b6ffca22e45a','模板管理','1',3,'cms/templet_list.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('58fe298f-b448-40bb-a1c0-d81134efa4af','信息页静态化','1',3,'cms/html_info.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5a47681c-63c3-47b1-8e1f-34d4dbba7d85','文字链接管理','1',6,'cms/link_list.do?link.type=3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('5f3a8e01-4216-4982-b07b-ad367fe9ef96','栏目页静态化','1',2,'cms/html_channel.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('66ecf6f7-1911-4e7e-8089-3a01f44a6d12','单位管理','1',98,'unit.jsp','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('67025758-eb65-40b1-a59c-edee1b3ae938','下拉链接分类','1',1,'cms/link_clazz.do?link.type=1','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('6c561fe7-2013-4ce5-bf9a-42874b07a99e','站点设置','1',0,'cms/site_config.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('6f32a2b6-a552-4a91-a10c-2962af63eca7','添加角色','1',0,'role_edit.do','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','下拉链接管理','1',2,'cms/link_list.do?link.type=1','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('8afb6f01-ae46-447c-acfa-1a6e0964bbba','角色管理','1',1,'role_list.do','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d','栏目管理','1',1,'cms/channel_channel.do','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('cb42d736-3386-42b8-a9f7-62840c4ecefa','信息管理','1',2,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e3066945-edb5-43ca-b29a-a0f96f98a50e','首页静态化','1',1,'cms/html_indexConfirm.do','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('e63b222f-3ccb-4e22-b8ab-7cd0dece9f06','静态化管理','1',4,'','');
insert  into `freecms_func`(`id`,`name`,`isOk`,`orderNum`,`url`,`parId`) values ('ea3034c4-5a98-4a8a-a175-7c43e42aa939','系统配置','1',102,'config_config.do','');

/*Table structure for table `freecms_info` */

DROP TABLE IF EXISTS `freecms_info`;

CREATE TABLE `freecms_info` (
  `id` varchar(50) NOT NULL,
  `site` varchar(50) default NULL,
  `channel` varchar(50) default NULL,
  `title` varchar(500) default NULL,
  `shortTitle` varchar(100) default NULL,
  `titleColor` varchar(10) default NULL,
  `titleBlod` varchar(1) default NULL,
  `source` varchar(50) default NULL,
  `author` varchar(50) default NULL,
  `description` varchar(1000) default NULL,
  `content` text,
  `tags` varchar(1000) default NULL,
  `img` varchar(500) default NULL,
  `url` varchar(500) default NULL,
  `attchs` varchar(1000) default NULL,
  `addtime` datetime default NULL,
  `templet` varchar(50) default NULL,
  `isTop` varchar(1) default NULL,
  `topEndTime` datetime default NULL,
  `clickNum` int(11) default NULL,
  `addUser` varchar(50) default NULL,
  `state` varchar(1) default NULL,
  `issign` varchar(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_信息_栏目` (`channel`),
  CONSTRAINT `FK_信息_栏目` FOREIGN KEY (`channel`) REFERENCES `freecms_channel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息';

/*Data for the table `freecms_info` */

insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`) values ('74ef43c9-cc3b-4eea-bacf-2703f663bf2f','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','欢迎大家使用FreeCMS','','000000','0','','','','<p>\r\n	欢迎大家使用FreeCMS!</p>','','/userfiles/images/admin/logo.png','','/userfiles/files/admin/log.rar;/userfiles/images/admin/1.png;','2012-12-05 21:18:29','','0',NULL,8,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,NULL);
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`) values ('93fa57df-3a03-4715-968d-bae6cb5a0742','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','FreeCMS 1.0 发布','','000000','0','','','','<p>\r\n	FreeCMS 1.0 已发布，请到<a href=\"http://code.google.com/p/freecms/downloads/list\">http://code.google.com/p/freecms/downloads/list</a>下载。</p>','','/userfiles/images/admin/logo.png','','','2012-12-05 20:57:54','','0',NULL,3,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,NULL);
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`) values ('d45fd50c-2199-48cc-a8fd-ad6b6ef7c2ae','7a4d22d6-762b-46e5-895b-d62da52bf9cb','c60bebab-cf84-4ba9-8c79-3dff5c2dc427','sign','','000000','0','','','','','','','','','2013-01-15 18:53:11','','0',NULL,35,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'1');
insert  into `freecms_info`(`id`,`site`,`channel`,`title`,`shortTitle`,`titleColor`,`titleBlod`,`source`,`author`,`description`,`content`,`tags`,`img`,`url`,`attchs`,`addtime`,`templet`,`isTop`,`topEndTime`,`clickNum`,`addUser`,`state`,`issign`) values ('d51cba2d-19cb-4517-9353-2b7a329bd1a6','7a4d22d6-762b-46e5-895b-d62da52bf9cb','6555dd8b-7acc-4e57-a19a-cc70dd4f7135','s','','000000','0','','','','','','','','','2013-01-15 19:29:23','','0',NULL,1,'02debc9f-53cd-4bc9-887b-49ffc4e925f2',NULL,'1');

/*Table structure for table `freecms_info_sign` */

DROP TABLE IF EXISTS `freecms_info_sign`;

CREATE TABLE `freecms_info_sign` (
  `id` varchar(50) NOT NULL,
  `userid` varchar(50) default NULL,
  `infoid` varchar(50) default NULL,
  `signtime` datetime default NULL,
  `ip` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_19` (`infoid`),
  KEY `FK_Reference_20` (`userid`),
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`userid`) REFERENCES `freecms_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`infoid`) REFERENCES `freecms_info` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户签收表';

/*Data for the table `freecms_info_sign` */

insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('2bbeeca4-e974-4f88-9370-ab846283b6e3','02debc9f-53cd-4bc9-887b-49ffc4e925f2','d51cba2d-19cb-4517-9353-2b7a329bd1a6','2012-09-09 00:00:00','123678');
insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('588f66cf-bc05-4876-af5c-e9abd9222d49','fdc995ef-e96f-4c00-9746-4b5a9b365caa','d45fd50c-2199-48cc-a8fd-ad6b6ef7c2ae',NULL,NULL);
insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('726f8bc2-79ae-4e5f-ad7d-4d37a27c2771','fdc995ef-e96f-4c00-9746-4b5a9b365caa','d51cba2d-19cb-4517-9353-2b7a329bd1a6',NULL,NULL);
insert  into `freecms_info_sign`(`id`,`userid`,`infoid`,`signtime`,`ip`) values ('f6cfc88d-803d-47f3-b73a-228d2ef6238d','02debc9f-53cd-4bc9-887b-49ffc4e925f2','d45fd50c-2199-48cc-a8fd-ad6b6ef7c2ae',NULL,NULL);

/*Table structure for table `freecms_link` */

DROP TABLE IF EXISTS `freecms_link`;

CREATE TABLE `freecms_link` (
  `id` varchar(50) NOT NULL,
  `parid` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `url` varchar(500) default NULL,
  `isok` varchar(1) default NULL,
  `ordernum` int(11) default NULL,
  `site` varchar(50) default NULL,
  `type` varchar(1) default NULL,
  `img` varchar(500) default NULL,
  `pagemark` varchar(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_12` (`site`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`site`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='链接';

/*Data for the table `freecms_link` */

insert  into `freecms_link`(`id`,`parid`,`name`,`url`,`isok`,`ordernum`,`site`,`type`,`img`,`pagemark`) values ('037abd4d-b19a-4108-8c82-c1575f9673e8','c3a152e9-ed35-458e-9208-335f27612a44','Google','http://www.google.com','1',NULL,'7a4d22d6-762b-46e5-895b-d62da52bf9cb','1','','');
insert  into `freecms_link`(`id`,`parid`,`name`,`url`,`isok`,`ordernum`,`site`,`type`,`img`,`pagemark`) values ('7860cba8-fd7c-4f88-9bec-2b7138b5276c','c3a152e9-ed35-458e-9208-335f27612a44','FreeCMS','http://code.google.com/p/freecms/downloads/list','1',NULL,'7a4d22d6-762b-46e5-895b-d62da52bf9cb','1','','FreeCMS');
insert  into `freecms_link`(`id`,`parid`,`name`,`url`,`isok`,`ordernum`,`site`,`type`,`img`,`pagemark`) values ('c3a152e9-ed35-458e-9208-335f27612a44',NULL,'测试链接分类',NULL,'1',NULL,'7a4d22d6-762b-46e5-895b-d62da52bf9cb','1',NULL,'test');

/*Table structure for table `freecms_operbutton` */

DROP TABLE IF EXISTS `freecms_operbutton`;

CREATE TABLE `freecms_operbutton` (
  `id` varchar(36) NOT NULL default 'newid()',
  `func` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(1000) NOT NULL,
  `isOk` char(1) NOT NULL,
  `orderNum` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_操作按钮_功能` (`func`),
  CONSTRAINT `FK_操作按钮_功能` FOREIGN KEY (`func`) REFERENCES `freecms_func` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作按钮';

/*Data for the table `freecms_operbutton` */

insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('02b90aa0-c2e0-4a63-bbe5-04838bd2d847','5257f8fd-9da2-4e83-8538-b6ffca22e45a','编 辑','edit()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('0b547a0a-c5b9-4186-920e-507d0e4268d4','425d0211-0196-4456-a24b-3e8d614dec8b','编 辑','edit()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('0db25404-44ac-429b-8ab7-66bd1bbc176a','5f3a8e01-4216-4982-b07b-ad367fe9ef96','生成所选栏目页','createChannel()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('10e8612b-af7b-437d-b8da-1c1a550bdce5','58fe298f-b448-40bb-a1c0-d81134efa4af','生成信息页面','createHtml()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('137705c8-8e68-410c-a61d-d13e0c01af6b','4331df96-2b8d-4dcf-9bdb-1015dfd0a759','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('15a50d4c-4866-4533-93a8-a19887d230d1','6c561fe7-2013-4ce5-bf9a-42874b07a99e','保 存','save()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('161b2215-d862-433c-aff2-3d99bc9236e0','19eebfb0-16b5-40eb-a909-1bd37ef7d745','编辑','edit()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('1a5ec49d-571b-4e42-a9da-2863c4704e94','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','保存','save()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('21ca6c9c-c5dc-47ab-9d74-dfd6fca9e2c3','67025758-eb65-40b1-a59c-edee1b3ae938','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('22c09714-f443-456b-8ad3-992d1f02d9dc','19eebfb0-16b5-40eb-a909-1bd37ef7d745','改变所属站点','parButton()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('275224d4-00d0-43e8-a9e8-379fd24429c9','2403873a-48fb-48ac-acd0-af4098df1a0a','保存','WebForm_OnSubmit()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('2aca3b79-6f94-473a-bfa8-420d92f9586b','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','删除','del()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('2db278fd-422f-44df-9072-2dca297c1b47','4331df96-2b8d-4dcf-9bdb-1015dfd0a759','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('307bca7a-ec7f-4bb3-8c8c-b8a072390494','67025758-eb65-40b1-a59c-edee1b3ae938','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('310108b1-a5dc-434d-b5de-d5f0064c004a','ea3034c4-5a98-4a8a-a175-7c43e42aa939','保 存','save()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3221edae-8f1e-4101-8ebe-5742dcc0edc1','18974989-cd85-48b2-8169-348bc3481ef8','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3561a44f-a0c9-491e-9300-9ffe59c3fca7','5257f8fd-9da2-4e83-8538-b6ffca22e45a','文件管理','fileManage()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('3c06e1ec-717d-4c2a-8340-47bbd2b3ff4f','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','授 权','auth()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4090990b-9e87-4a0b-b2fa-9354d9c3a46a','12187d67-5ab9-4ae4-bbee-9a772cebd0de','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('427b987d-b3c2-4e17-bb09-f4a6faf248bb','5a47681c-63c3-47b1-8e1f-34d4dbba7d85','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('44e33169-b7b9-4995-a8f1-291b69286bcf','5a47681c-63c3-47b1-8e1f-34d4dbba7d85','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('464b41df-f81e-4e54-b28d-436e9092eda2','4331df96-2b8d-4dcf-9bdb-1015dfd0a759','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4de14364-517b-4c41-a60f-318ec98296a0','6f32a2b6-a552-4a91-a10c-2962af63eca7','保存','WebForm_OnSubmit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4e86fdcb-4240-4bd7-96f7-1921671bf650','19eebfb0-16b5-40eb-a909-1bd37ef7d745','添加下级站点','addSon()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('4ec7e50a-a272-4a12-8f69-a36366595397','0bec6b84-19be-4d99-bc44-ca1d8472148f','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('56227812-981f-488f-90b1-92eded41aa54','5f3a8e01-4216-4982-b07b-ad367fe9ef96','生成此站点所有栏目页','createAll()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('597ad917-2681-444e-b92b-b5971c94aca2','12187d67-5ab9-4ae4-bbee-9a772cebd0de','删 除','del()','1',5);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('59a6b3e9-eafc-47cc-825c-eda5ef46a816','12187d67-5ab9-4ae4-bbee-9a772cebd0de','重置密码','resetPwd()','1',4);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('5a0b8732-af98-4270-acee-b5456898ff46','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','添加下级单位','addSon()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('67982f56-1b92-4e04-ae78-128a8853edb8','425d0211-0196-4456-a24b-3e8d614dec8b','添 加','add()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('6866fac3-70dd-4895-b4bb-ea9a50c465dd','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','改变所属单位','parButton()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('6f6ebd83-cace-4cb9-9b64-4fdbe60741ee','8afb6f01-ae46-447c-acfa-1a6e0964bbba','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('754fd2a6-6094-4334-b457-e0107a0506bf','5257f8fd-9da2-4e83-8538-b6ffca22e45a','删 除','del()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('768963aa-aa71-444a-a013-a06a31fcad2c','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('77b23596-654b-4a54-993e-8e678e51cf74','66ecf6f7-1911-4e7e-8089-3a01f44a6d12','添加一级单位','addOne()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('77e74e50-ed23-43a4-8afa-029aef42f065','0bec6b84-19be-4d99-bc44-ca1d8472148f','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('7882b7f4-cb5b-4a18-b1f6-037cbf815661','5257f8fd-9da2-4e83-8538-b6ffca22e45a','添 加','add()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('80f3c1df-4df6-4c4c-8fd8-20a415536a2a','6c561fe7-2013-4ce5-bf9a-42874b07a99e','预览站点','preview()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('85ca4973-0e3c-4a14-be16-290850aa760c','0bec6b84-19be-4d99-bc44-ca1d8472148f','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('95872bc9-b7a3-43d7-b72c-8e20e5d43874','19eebfb0-16b5-40eb-a909-1bd37ef7d745','添加一级站点','addOne()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('95c7f91f-eaff-4ceb-b88c-baf1bcb5ea39','003c47c5-7041-4cfa-8631-82c00ab3fb35','保存','save()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9a533db1-728f-45ce-882f-a75b5a5d9332','8afb6f01-ae46-447c-acfa-1a6e0964bbba','站点授权','siteAuth()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('9d780208-d3d6-4dd9-99d5-4dfbc5870128','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('a1503362-5cc4-46a0-bfe2-a57e9c1479e4','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','编 辑','edit()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('adef49b9-1e4f-410b-bc35-e9611a255356','12187d67-5ab9-4ae4-bbee-9a772cebd0de','授 权','auth()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('b3627085-294d-4e71-ba74-6a98e6525530','003c47c5-7041-4cfa-8631-82c00ab3fb35','管理操作按钮','operButton()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('beb25f53-7325-49b9-ab95-8abeff63448c','19eebfb0-16b5-40eb-a909-1bd37ef7d745','删除','del()','1',NULL);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('c3ce9418-9dcc-4578-90b2-3f6ab08f61a7','18974989-cd85-48b2-8169-348bc3481ef8','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('ca0d70ff-0509-4d9b-b224-f0428934825b','003c47c5-7041-4cfa-8631-82c00ab3fb35','删除','del()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('cb52abdd-9a80-46d0-9115-f4c7cdf0c8f4','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c','删 除','del()','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('cef54353-09d1-4ff6-bedd-370ab799913c','18974989-cd85-48b2-8169-348bc3481ef8','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('d46540d4-03fb-4de8-a502-3cbe9e72e9bd','67025758-eb65-40b1-a59c-edee1b3ae938','添 加','add()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('d6001817-3246-4d7b-a86e-49d771fdb082','12187d67-5ab9-4ae4-bbee-9a772cebd0de','禁 用','state(\'0\')','1',3);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('d6d1f29e-99a2-4621-b89c-b6f8ad2a4d52','425d0211-0196-4456-a24b-3e8d614dec8b','删 除','del()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('db1df28e-ddf2-45b6-9a8c-c0f76d50a4ac','003c47c5-7041-4cfa-8631-82c00ab3fb35','添加一级菜单','addOne()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('e919a9bf-2a08-4c66-9924-c7207fe04bae','12187d67-5ab9-4ae4-bbee-9a772cebd0de','启 用','state(\'1\')','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('eda69cc3-77c0-4ba4-8dfd-57da1bc5ce97','8afb6f01-ae46-447c-acfa-1a6e0964bbba','授 权','auth()','1',1);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f0966fd2-e63f-44a4-ae75-7e006592e33a','5a47681c-63c3-47b1-8e1f-34d4dbba7d85','编 辑','edit()','1',2);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f802308a-b962-4835-937e-3f46caa88c18','003c47c5-7041-4cfa-8631-82c00ab3fb35','改变所属菜单','parButton()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f93e7a6a-3365-4166-aaf1-65e4d9c5f9e5','8afb6f01-ae46-447c-acfa-1a6e0964bbba','删 除','del()','1',6);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('f9df095f-5d08-426a-adde-442db13672eb','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86','删 除','del()','1',0);
insert  into `freecms_operbutton`(`id`,`func`,`name`,`code`,`isOk`,`orderNum`) values ('fe923f0e-62ac-4a00-ba51-6a27f37ddc60','003c47c5-7041-4cfa-8631-82c00ab3fb35','添加下级菜单','addSon()','1',0);

/*Table structure for table `freecms_operlogs` */

DROP TABLE IF EXISTS `freecms_operlogs`;

CREATE TABLE `freecms_operlogs` (
  `id` varchar(36) NOT NULL default 'newid()',
  `loginName` varchar(100) NOT NULL,
  `operTime` datetime NOT NULL,
  `content` varchar(5000) NOT NULL,
  `ip` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志';

/*Data for the table `freecms_operlogs` */

insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('000f46c0-5ed6-4de2-ba02-c93824fa8b7f','admin','2012-12-20 20:58:14','添加操作按钮 sa 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0186b71d-0677-4cb0-884e-c61b2dee1226','admin','2013-01-10 22:01:16','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('01bcb34a-c1d0-4202-ab08-21492f86854b','admin','2013-01-06 22:11:22','栏目静态化:捐赠 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03086191-831f-43cc-b55f-136af1f27622','admin','2013-01-14 20:11:48','修改菜单 用户管理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03101d3f-2892-4470-8892-1e4824fb6c98','admin','2013-01-14 20:11:57','修改菜单 菜单管理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('032fe450-3583-41d5-89a7-7a3dbff51cac','admin','2012-12-30 16:12:21','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03329a0b-c596-4e1c-a720-32368f66216c','admin','2012-12-25 19:39:57','添加模板(测试模板)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('03eb842f-9f83-4b6a-afe1-31dd0c2ab90e','admin','2013-01-06 22:11:24','栏目静态化:贡献源码 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('04385dce-7556-44a2-9391-c51c961dad54','admin','2012-12-20 20:03:00','添加菜单 一级菜单 成功<属性>b51c4461-2c30-4710-b833-04811cde745a<属性>一级菜单','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('04670169-db1a-43ad-b4cb-08e182644bf3','admin','2012-12-30 17:46:36','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('057f1230-f148-4d8f-b8d0-7d81968c14c1','admin','2012-12-30 18:02:43','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('059fd0a7-207a-4035-a2a8-62e81bca09e6','admin','2012-12-30 17:05:39','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('077739f0-3c17-461d-8b2f-2cdade8e779a','admin','2013-01-06 22:01:36','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('07abfbb0-f5a6-4948-80e9-9d7aedbd9f8d','admin','2013-01-06 22:11:20','栏目静态化:下载 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0936ffe5-9b0e-4f59-a2eb-10105e38ddb8','admin','2013-01-06 20:44:02','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0a001f00-25f3-4b9b-bdbe-2e3fafe1f3c5','admin','2013-01-10 20:08:42','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0b698e6e-c341-4458-a0d5-5b77374b2a5d','admin','2012-12-25 19:39:46','添加模板(要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0c973551-34c6-40ff-9ffd-b27fb80937cb','admin','2013-01-15 18:53:11','添加信息(sign)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('0d9896ff-7dc0-4989-b7c3-d6cd37c2f59c','admin','2012-12-30 17:53:50','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('11c11827-a2a3-4a77-a0c4-58bcfb2204e9','admin','2013-01-06 22:11:21','栏目静态化:关于 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('12a8615e-9dc0-41e6-a227-ea6f0091287c','admin','2012-12-25 20:02:14','修改模板文件(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('136df0f5-81df-4aae-a7f5-b9d930dbfcf6','admin','2012-12-25 19:39:18','添加模板(工)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('13973e6a-cfbc-41f9-91fd-f10097ce16fc','admin','2012-12-30 17:37:49','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('149070d1-1497-4706-abb4-bacd92af377d','admin','2013-01-06 20:35:05','更新信息(欢迎大家使用FreeCMS)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1584a299-767d-456c-ab9a-478447996883','admin','2013-01-06 22:10:06','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('167feb53-3b88-4191-a6ac-39aa44138237','admin','2013-01-06 22:11:21','栏目静态化:动态 第2页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('16be8b20-d5df-41cb-9795-0a05a8bde26c','admin','2012-12-30 17:50:01','更新信息(FreeCMS 1.0 发布)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('19572708-d766-4266-a128-24105adccaf9','admin','2013-01-15 20:24:45','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1b29b97c-5090-488a-9f11-6eb01f307fc7','admin','2012-12-26 19:45:58','添加链接分类(测试链接分类)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('1e26be2d-8d9c-477b-96b3-8f487ccd010d','admin','2012-12-30 16:08:49','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('23ed583d-1987-4e4c-a6fb-53ffbd4d699c','admin','2012-12-21 19:56:52','删除单位 sdfd 成功<属性>07f9e6f6-f181-4733-99dc-1c925ec4e204','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2434af5a-3d12-478b-a240-29c8bcc455e0','admin','2013-01-04 20:21:17','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('29235ce1-de02-4497-9bdb-971f47c6a3f5','admin','2012-12-30 17:40:48','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('29c3db6b-382f-4a68-9379-87e94a8d7136','admin','2013-01-06 20:24:04','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2bb0ac33-9ed6-4425-910a-0169030bb13b','admin','2012-12-30 17:49:48','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2d576b25-e961-4a62-8466-fde171b04a96','admin','2012-12-20 21:01:54','删除菜单 一级菜单 成功<属性>b51c4461-2c30-4710-b833-04811cde745a','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2e08344d-bb3f-4d4d-a14e-48f747663854','admin','2013-01-10 21:58:07','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('2feab9b1-904b-4d92-96a0-73518cabf158','admin','2012-12-20 20:15:14','改变菜单 一级菜单 的所属菜单为 站点管理 成功<属性>b51c4461-2c30-4710-b833-04811cde745a<属性>19eebfb0-16b5-40eb-a909-1bd37ef7d745','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('304a00d4-9b23-428f-ac42-590471834548','admin','2013-01-06 22:10:44','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3057fb69-7075-4178-aee8-b124130d55ca','admin','2012-12-30 17:03:43','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('30640616-bf6a-4543-95a7-3bebc0f136ac','admin','2012-12-24 20:16:04','改变站点 一级站点 为 一级站点','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('313deeb6-5ba5-4f55-b60d-c9a5eaf82479','admin','2013-01-06 22:06:58','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('31edd6e2-d438-4d22-bcdb-bec44261f471','admin','2013-01-06 22:10:40','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('32301138-2523-4e1a-8f7a-7fc45409d959','admin','2012-12-30 17:51:41','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('327c14db-2948-4f46-9040-40fd382805ad','admin','2013-01-06 22:11:32','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('348a4303-64ac-478d-994a-e01c1ac708c3','admin','2013-01-15 20:17:21','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('358d5b9f-6f3a-48a4-ba18-e17f784ebb06','admin','2013-01-15 18:53:12','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('36a17c2f-7ef8-4588-a0e4-ed9432becc33','admin','2013-01-06 22:11:32','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('37623ee6-8971-4477-b845-aa0fad21dca5','admin','2012-12-30 16:12:11','更新栏目 Bug报告','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3877a02e-ecaa-4800-af75-bb5cca239e69','admin','2012-12-21 20:10:26','修改角色(站点信息员)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('39e92079-94cb-4da9-a8be-3e69af5e9a60','admin','2012-12-30 17:07:42','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('3e68116a-ff56-4c41-8e39-1584e3594ce1','admin','2013-01-10 20:14:57','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4092f2bc-2ec0-4d6a-9061-7f103b23a3e0','admin','2013-01-06 22:11:22','栏目静态化:服务支持 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('418e2629-39e8-47d9-b776-2fc689fd5f95','admin','2012-12-21 20:17:02','添加角色菜单权限(站点信息员-站点管理)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('41954b9e-760d-4bbe-a0ef-52187dd3aa4c','admin','2013-01-06 21:52:16','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('41d39f42-8847-4077-aef8-cf211084f1f0','admin','2013-01-15 19:29:23','添加信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('42ea404b-fe11-41dc-8b81-c555e752e2c6','admin','2013-01-14 20:11:22','修改菜单 角色管理 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4472cd95-95d8-4b8a-99c9-fb22c2537821','admin','2012-12-30 17:53:45','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('473ce4a3-11f1-42f4-a16f-4141d6c6a486','admin','2012-12-26 19:52:09','修改链接(测试链接)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('47900193-d692-4989-b2b8-82fa24be6ff7','admin','2012-12-20 20:53:27','添加操作按钮 a 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('48124d3b-04c7-443a-b2a4-be664cc66d34','admin','2013-01-06 20:43:56','添加链接(Google)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('49987d73-7f83-480e-9e1d-3253ded4ac24','admin','2013-01-06 22:11:26','栏目静态化:讨论 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4b517bb7-b7e2-41df-9a51-0ae12ac47d6e','admin','2013-01-06 22:11:21','栏目静态化:动态 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4bbab0b8-ca33-4127-9669-cb6654d0f8df','admin','2013-01-06 20:41:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4d85688f-fc73-4ba1-9395-d519b83082b5','admin','2013-01-06 20:41:06','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4da84070-ac60-45e9-ad1d-ac58a43ad266','admin','2013-01-06 20:36:21','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4dfdf780-c1eb-42a4-9f14-830dc793936b','admin','2013-01-10 22:04:12','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('4f05ca98-a7a8-4ceb-ba86-07e22ebaa3aa','admin','2012-12-30 17:01:45','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5098c7ee-4bc9-474a-83c1-82f3c19908d1','admin','2012-12-30 17:53:10','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5158ba5f-2d92-4dbb-a41c-869c5c521ef9','admin','2013-01-04 21:37:15','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('51a6ba9f-1eb8-4115-88e2-5d943b6f933d','admin','2013-01-10 22:02:04','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('528bb158-b6dd-481e-8fc1-c995ae570800','admin','2013-01-15 20:15:25','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('53bf3571-019e-402d-9e83-4103ee08074d','admin','2013-01-04 20:24:44','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56432a27-7bb2-42cc-954b-3b988b76770e','admin','2013-01-04 20:22:45','添加模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('56e0cc81-299d-4dc6-95bb-a96f99c44390','admin','2012-12-25 20:05:05','删除模板文件(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5864dea8-7f7e-457e-a05f-acef8ed64cb4','admin','2013-01-10 20:32:42','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('59e74799-acd9-4c46-8b36-4b18b7574d93','admin','2012-12-25 20:06:34','创建模板文件夹(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5ba43c68-12f6-46e1-bff4-7bb689ceaae2','admin','2013-01-06 22:01:01','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5bb6fea7-e360-463d-9d91-05889964f8de','admin','2013-01-15 20:20:21','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5df06668-98c9-471b-8813-2c007e095c43','admin','2013-01-15 20:16:00','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5f5cfe26-f8a6-4f93-8e74-909e1ac00417','admin','2012-12-21 20:17:09','添加角色菜单权限(站点信息员-站点设置)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5f713e1c-d4c6-4db1-9fda-7d98a7ad650c','admin','2013-01-10 22:04:09','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('5fea5fca-12ea-45b9-a2f3-b97b4d34f583','admin','2013-01-06 20:36:21','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6191b119-bc0a-4024-bc75-e7d98b4cbac5','admin','2012-12-30 17:46:41','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('640b4e40-aada-4e0e-8f07-c81a64915450','admin','2012-12-30 16:08:43','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('64b688fb-6f50-4bbb-9afb-6ba28438bc1a','admin','2012-12-20 20:49:16','删除操作按钮 保 存 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('64b73634-2655-4e4c-9b0e-af269c82607a','admin','2013-01-10 20:00:38','更新站点 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6b168e12-653d-4b2a-9dcb-b2d0100ea41e','admin','2012-12-30 17:53:06','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6d1a26f7-fca3-42fe-a3e0-0f79c4bedc49','admin','2013-01-04 20:26:16','修改模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('6ec9fa10-cc9a-4e6b-ad1c-9d7a586b26b8','admin','2013-01-15 20:57:53','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('703f18ea-ed5b-408d-b5cf-07188ea616db','admin','2012-12-20 20:41:26','添加操作按钮 保 存 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7490f1c3-3741-44fb-badf-c1d2af82e81b','admin','2013-01-04 20:21:11','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('75071c2e-5511-4f7f-b5ff-33ade1abd292','admin','2012-12-30 17:38:04','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('768bfbfc-dbb9-4753-b9c7-aa5f9c1a5e85','admin','2013-01-04 21:36:46','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7875e0d7-beec-4c60-a851-f58d69edcc7c','admin','2013-01-06 20:24:12','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('78a82bcd-1b2f-489a-9a61-a10c11dfcea7','admin','2013-01-10 21:57:45','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('7d2d3d16-893b-4c5d-a710-7994a3e23a81','admin','2013-01-06 22:11:22','栏目静态化:要点 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8134b5cc-b6ec-4b6b-81ce-abb22b190b82','admin','2013-01-06 22:11:24','栏目静态化:常见问题解答 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('81ed1c8c-10d8-4146-81fe-98cc773f6612','admin','2013-01-06 22:11:25','栏目静态化:获得支持 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('82785a30-25f1-4ef9-869d-7b35b432dc6a','admin','2012-12-30 17:40:54','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8649ccac-cf95-4a7c-a1ec-f67a34e5d673','admin','2012-12-30 18:01:10','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('86d35c52-eadb-4a2c-8f10-3d8aa681140f','admin','2012-12-25 20:08:44','重命名模板文件夹(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87384b66-eb1c-4bd8-a6d8-931d01ddd0b7','admin','2012-12-30 17:47:05','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('87e1fbdc-0808-4e1e-aadb-765c1283b529','admin','2013-01-06 21:59:11','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8b94fa0b-569d-4181-b435-331d8dc98dac','admin','2012-12-21 20:27:35','删除角色(站点信息员)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8bce7ed7-0ed9-494a-91d8-e3fae422d444','admin','2013-01-10 21:57:42','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8bd387d4-03c0-4ecf-8a75-7807f58faacc','admin','2013-01-05 22:32:35','閫�鍑虹郴缁�','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8d5ae2c2-17c4-4d17-b03b-da7e00c8396f','admin','2012-12-30 16:12:17','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8f82096f-466e-4ecc-80e0-ecf68339b090','admin','2013-01-15 19:29:24','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('8f9a4635-9869-4b75-93b5-c454f2657649','admin','2013-01-06 20:35:06','信息页静态化:欢迎大家使用FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('911d2a43-45e4-4d4f-8645-5a7fc8c67d71','admin','2012-12-30 17:53:30','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9124ab71-b54b-48c0-9509-c0858e22d48c','admin','2013-01-06 20:36:04','修改模板文件(templet\\freecms\\信息页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9334f4f6-b2b3-475d-b150-f7f5aaf3cb30','admin','2013-01-06 21:55:39','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('941e7b30-c8dc-4441-8526-813cc9f61df9','admin','2012-12-30 17:49:48','更新信息(欢迎大家使用FreeCMS)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('99711401-91d0-42af-876f-6ee72bd16636','admin','2012-12-20 21:01:19','删除操作按钮 sa1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('998857f1-4bcd-49de-bd09-d317f064efb6','admin','2012-12-25 19:27:12','添加模板(测试模板)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9a42d3ba-5436-4902-b87e-656e7657c749','admin','2012-12-30 17:01:35','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9bd023ec-e6bc-4773-b6ab-1debd9acf2c9','admin','2012-12-25 19:39:27','删除模板(工)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9c382626-b763-446c-8a78-66edbafb930e','admin','2012-12-24 20:07:06','添加站点 一级站点','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('9eb5e757-c0a3-4cf7-874d-fb7b1b36e10e','admin','2013-01-06 22:11:24','栏目静态化:下载 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a095f882-db59-4f13-a887-c45736dcd931','admin','2012-12-21 19:58:13','添加单位 fds 成功<属性>2b5c7d7e-1d35-465c-b43b-57a209bd1914<属性>fds','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a16f1ff5-9c6e-40f4-af98-f7f06f830527','admin','2012-12-30 17:40:14','更新栏目 动态','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a32280fd-4f5f-44a2-9efa-c6d9f68ab18d','admin','2013-01-14 20:38:55','添加操作按钮 保 存 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a79bb39e-3538-4052-a74b-32e5f70eef53','admin','2012-12-30 17:47:00','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a8fd2dd6-d189-44b7-bc40-d9c2c568bf97','admin','2012-12-25 19:39:06','删除模板(测试模板)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a94a9344-ca18-4d85-8465-9b624513c119','admin','2013-01-15 20:15:37','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a95d46a7-9516-41eb-a6e4-79f23488c4d5','admin','2012-12-25 20:11:12','删除模板文件夹(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test1)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('a99b923d-7dbe-4203-b63e-d451b9d9852b','admin','2012-12-24 20:06:27','编辑用户(freecms)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aa64d14e-d517-40c7-990b-5353ff3e6895','admin','2013-01-15 19:47:53','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aae5a839-261e-4b25-bd1f-df882711f5e2','admin','2012-12-30 17:03:36','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ab92d26e-a521-450a-aee9-1bc7479ca6ab','admin','2013-01-06 22:11:23','栏目静态化:源代码 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('acce6123-b10a-4713-bcc9-c61760485ab5','admin','2013-01-04 20:28:22','修改模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('acfcbd3f-8ef7-4f34-b1f2-6df0e77c898f','admin','2012-12-20 20:53:31','删除操作按钮 a 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ae7f0792-2f97-4a17-8ae2-d5d6a5a6bbc6','admin','2013-01-10 20:15:27','站点设置 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('aec163d1-f067-4545-bc98-a2e904432f84','admin','2013-01-14 20:13:16','添加菜单 系统配置 成功<属性>ea3034c4-5a98-4a8a-a175-7c43e42aa939<属性>系统配置','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b04f24f1-b1c4-4684-89be-24d43f75a331','admin','2013-01-15 20:25:03','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b0600ffd-4c6f-4a01-846c-f10d26401d5a','admin','2012-12-25 19:39:50','删除模板(要)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b155f50f-d7c4-40c0-855b-54bc02e730ea','admin','2013-01-15 20:38:55','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b4565707-a98c-4465-a8ab-5ce9f69afa87','admin','2013-01-06 22:11:26','栏目静态化:参与 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b4c2e822-5634-4082-9f66-3056166e07ee','admin','2013-01-06 22:11:25','栏目静态化:维基 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b6510761-7ab6-42ca-8fdb-1afa78713eeb','admin','2013-01-06 20:43:36','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b6766b3a-65f0-4129-b979-e689fc5c9251','admin','2013-01-10 21:53:48','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b72fee79-b85a-4fc0-801b-e9a48b86c90e','admin','2012-12-30 16:12:49','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b7448c18-f239-46cd-98b3-944a803907f0','admin','2012-12-30 16:12:54','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b7a4f683-b7a9-4a31-ae1f-1db5535f34d1','admin','2012-12-26 19:51:38','添加链接(测试链接)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b83d8340-5192-4aec-9ccc-1d2d51636343','admin','2012-12-20 21:01:09','修改操作按钮 sa1 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b87ac2e8-72db-45e1-9e82-ad3191e856e1','admin','2013-01-15 19:44:18','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('b9ce6582-dde6-4e4b-b937-489f2ac9f187','admin','2012-12-25 19:59:10','添加模板文件(templet\\f392cd10-13b6-4208-a5a9-77c7fd30bcf5\\test.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('bc8d7fc4-1cd9-47d0-ac03-cba072f86704','admin','2013-01-04 21:40:49','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c085b906-143c-476f-987e-05680859351c','admin','2013-01-04 20:25:37','修改模板文件(templet\\freecms\\搜索页面.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c12a02f1-062e-43b4-8b72-fe5d05209aa1','admin','2013-01-06 21:52:11','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c31fc268-951e-4681-a3eb-a83284d03eaa','admin','2012-12-21 19:58:18','删除单位 fds 成功<属性>2b5c7d7e-1d35-465c-b43b-57a209bd1914','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c4e655cf-ef47-487f-bc19-96bd87ff8947','admin','2013-01-06 22:11:23','栏目静态化:Bug报告 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c4e97fc7-71e5-4204-a8f2-06a5c76b444f','admin','2013-01-15 19:47:53','更新信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('c5e5dcae-9edd-49f2-9879-2b44751e1920','admin','2013-01-15 20:58:00','信息页静态化:sign','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('cb893a12-ae70-4f9b-8f52-74b93d3ad4c9','admin','2013-01-04 20:24:31','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d10484d8-1c09-4c60-b86e-2906aded2dee','admin','2013-01-10 20:32:48','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d163389e-5a43-4153-a31f-ffd243b374eb','admin','2012-12-30 17:05:35','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d1d1e8bb-837d-4855-aefb-64cee058ca74','admin','2013-01-06 21:55:36','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d44c126e-a305-4fe7-bfe8-865ae9566a5c','admin','2013-01-06 22:02:08','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d7cab2f7-3a44-40ea-b2cd-2faad1bc052a','admin','2013-01-04 21:40:52','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('d9072eef-2aa8-44ff-a45f-d78811218770','admin','2012-12-30 17:07:37','修改模板文件(templet\\freecms\\inc\\头部.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dc25f09d-5627-4c31-8f6b-35df9c108ac8','admin','2012-12-26 19:04:04','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('dcae9d09-2a1f-4801-a92a-10953e04ac26','admin','2012-12-30 17:50:01','信息页静态化:FreeCMS 1.0 发布','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e179b792-5a7c-4141-bcd6-a0aead4d5165','admin','2013-01-06 22:11:26','栏目静态化:其它 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e1be04ca-cf35-4ebb-8629-8f5c7be72713','admin','2013-01-06 22:11:23','栏目静态化:解决方案 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e1d51d68-af23-4b2f-bff7-7c507e1860de','admin','2013-01-06 22:11:25','栏目静态化:加入FreeTeam 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e2831826-9317-415d-b999-fb00f4a87112','admin','2013-01-10 21:53:44','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e4c5f6ab-0179-45ea-beab-5dab14c29619','admin','2013-01-10 22:02:08','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e68e661a-fcba-4864-ad15-10d046426b9f','admin','2012-12-24 20:09:58','改变站点 一级站点 的所属站点为 FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e89860fd-94e3-4c08-9b9e-9ef7a311fffa','admin','2013-01-15 19:44:17','更新信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('e9855394-5ebc-4ba2-a32a-bd670a8097f4','admin','2013-01-14 20:14:08','修改菜单 系统配置 成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('eb120297-2551-4232-b606-c973acf552b5','admin','2012-12-30 18:01:07','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ecab4886-9d69-481b-a0ac-769292b14409','admin','2012-12-26 19:04:15','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ef24f495-0484-40ee-8a20-144e294d45a3','admin','2013-01-15 19:44:31','更新信息(s)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('ef7ff410-a455-4510-9e84-41426eabafaa','admin','2013-01-15 19:44:32','信息页静态化:s','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f00d6fce-757f-4351-afcb-f6af6e8b96b6','admin','2013-01-04 21:37:07','修改链接(FreeCMS)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f0948b8d-d715-4490-969b-5ccec46ae698','admin','2012-12-30 18:02:39','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f148decd-3c40-4396-8535-70aecfef5364','admin','2012-12-30 17:51:45','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f7714b0d-218b-4493-97a9-15c42abced50','admin','2012-12-21 19:54:55','添加单位 sdfd 成功<属性>07f9e6f6-f181-4733-99dc-1c925ec4e204<属性>sdfd','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f798dd69-c4d1-4bf3-8b63-bc35b645afa2','admin','2013-01-06 22:11:23','栏目静态化:许可证 第1页','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f8876f5d-1812-41d3-ba6a-1f7b9ee2a51c','admin','2012-12-21 20:17:06','删除角色菜单权限(站点信息员-站点管理)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('f8a61262-4d62-475c-a0a1-399ca86de74e','admin','2013-01-15 20:16:00','更新信息(sign)成功','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc3a83f5-416a-41e3-8837-39fb3ebd8feb','admin','2013-01-06 21:59:05','修改模板文件(templet\\freecms\\首页.html)成功!','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc667d82-b2a9-4fd1-bdd5-35cb7d3d6000','admin','2013-01-06 22:02:55','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fc75a447-9a69-4175-b9e7-0e95d210a484','admin','2012-12-20 20:07:20','添加菜单 下级菜单 成功<属性>fb0c9160-d35a-499d-8caa-8798256bc562<属性>下级菜单','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fe7c2361-2035-47be-8923-eaa91c3a3e54','admin','2013-01-06 22:00:03','首页静态化:FreeCMS','127.0.0.1');
insert  into `freecms_operlogs`(`id`,`loginName`,`operTime`,`content`,`ip`) values ('fec6c3ed-2667-4b36-b1da-0dab7e3865ce','admin','2012-12-20 21:01:15','修改操作按钮 sa1 成功','127.0.0.1');

/*Table structure for table `freecms_role_channel` */

DROP TABLE IF EXISTS `freecms_role_channel`;

CREATE TABLE `freecms_role_channel` (
  `id` varchar(50) NOT NULL,
  `roleid` varchar(50) default NULL,
  `channelid` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_17` (`roleid`),
  KEY `FK_Reference_18` (`channelid`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`roleid`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`channelid`) REFERENCES `freecms_channel` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_栏目';

/*Data for the table `freecms_role_channel` */

/*Table structure for table `freecms_role_func` */

DROP TABLE IF EXISTS `freecms_role_func`;

CREATE TABLE `freecms_role_func` (
  `id` varchar(36) NOT NULL default 'newid()',
  `roleId` varchar(36) NOT NULL,
  `funcId` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_角色_功能__功能` (`funcId`),
  KEY `FK_角色_功能__角色` (`roleId`),
  CONSTRAINT `FK_角色_功能__角色` FOREIGN KEY (`roleId`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_角色_功能__功能` FOREIGN KEY (`funcId`) REFERENCES `freecms_func` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_功能';

/*Data for the table `freecms_role_func` */

insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('0ca42f48-c62b-4d3b-8dab-1343519051b8','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','47b80631-bb6e-4abd-8e47-5b99bce8b3bd');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('11351937-f2e3-4f10-9b9b-2cdc1babbbd7','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5f3a8e01-4216-4982-b07b-ad367fe9ef96');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('1e9c224b-a4fe-465e-972f-724c5651807f','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','425d0211-0196-4456-a24b-3e8d614dec8b');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('210ba1a3-7a2e-4f86-b419-ec20c97d0a54','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','0bec6b84-19be-4d99-bc44-ca1d8472148f');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('213b1ac5-116d-4166-9c32-9facd4b1a98b','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2b334331-7a66-4b5c-bd12-ac98109eb8e1','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','67025758-eb65-40b1-a59c-edee1b3ae938');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('2ff19fe8-b5c7-42a3-ad35-02f5caf187e2','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5257f8fd-9da2-4e83-8538-b6ffca22e45a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('393cbffc-2d21-4203-8f27-ac8a40411932','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','66ecf6f7-1911-4e7e-8089-3a01f44a6d12');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('438df26e-94ee-454d-acc0-fd56cddb0bf9','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','cb42d736-3386-42b8-a9f7-62840c4ecefa');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4cd0268a-2afd-4138-8415-78e36463b92b','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4d8f5c3f-2171-4ba8-8183-478edd4749c0','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','88749e6a-a8ec-47ef-aa4a-f7912d0ed12c');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('4dd72e33-2afd-40c5-8c5c-2b6cebb8d067','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','003c47c5-7041-4cfa-8631-82c00ab3fb35');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5b4fa9b1-3dac-4547-8169-76f450e9e85a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5a47681c-63c3-47b1-8e1f-34d4dbba7d85');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('5b580be5-4552-495c-b503-49f326e55b68','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','08cfd343-2803-403e-b952-f7d41199d8e1');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('60300c12-a38e-4968-8848-35e4a8c758b4','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','47b80631-bb6e-4abd-8e47-5b99bce8b3bd');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('60a5e528-31bb-4b2d-9047-efcf4b5c9b0e','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('6100e3ba-4e2e-47e7-8f64-d2b2db0335a9','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','18974989-cd85-48b2-8169-348bc3481ef8');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('7328120e-7241-44c6-a852-54267155e187','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','18974989-cd85-48b2-8169-348bc3481ef8');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('738d4447-b9c7-43bc-a2e6-6ffcdf4d1ff1','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('813b6de1-8d96-4a0e-be6b-89348a36f05c','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','08cfd343-2803-403e-b952-f7d41199d8e1');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('8aa8f12b-de3b-412d-89c4-c8dd94118b77','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','26622672-9a10-4e4e-93a7-7fe50a9208b3');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('8ffc46e4-14fb-4ba9-887e-fb372e4caaec','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','0bec6b84-19be-4d99-bc44-ca1d8472148f');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('92ad4f3a-ef23-4521-aad4-39dab6f4efd4','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','6c561fe7-2013-4ce5-bf9a-42874b07a99e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('a2b3a078-d673-4752-ad0f-4c3bc9d18f37','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','58fe298f-b448-40bb-a1c0-d81134efa4af');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('ac8e469d-07c1-42b2-8a88-f5a256f9f98e','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','e3066945-edb5-43ca-b29a-a0f96f98a50e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b2044d86-d02c-4342-945b-7ff6ee574b54','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b25fc673-7ff0-4c34-af9b-efcdd683a2d4','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','12187d67-5ab9-4ae4-bbee-9a772cebd0de');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('b32ef6ec-c490-4388-8da0-391145a8e55a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','425d0211-0196-4456-a24b-3e8d614dec8b');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('bc7dfd13-29db-4dfc-9abc-0dc82f3ad7db','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5257f8fd-9da2-4e83-8538-b6ffca22e45a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('bed880b3-ab93-4d3a-9fed-0ce9214ff2d6','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','4331df96-2b8d-4dcf-9bdb-1015dfd0a759');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('bf9182d6-16ec-4d79-952d-8867a23a887a','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','3dc03dc5-56ba-46d9-b8ab-78d19c04cd86');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('c3e86733-7020-41bc-b888-58b1b6dba341','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','2403873a-48fb-48ac-acd0-af4098df1a0a');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cdfa9c7a-46da-45c3-bbaf-50315b9a59fd','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','5a47681c-63c3-47b1-8e1f-34d4dbba7d85');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('cedd82fc-9a02-460a-904d-03683c53fed5','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','e63b222f-3ccb-4e22-b8ab-7cd0dece9f06');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d012680a-88b1-40b0-99a4-aa51dc11d7c8','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','4331df96-2b8d-4dcf-9bdb-1015dfd0a759');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d16e529d-1691-4ed6-a8c7-d24a513cef70','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','15dfc8ac-bfda-40cc-abb1-f563c1a1d1d2');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('d3bde903-f60a-43f4-96dc-b2be8d37d0f4','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','e3066945-edb5-43ca-b29a-a0f96f98a50e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('dd298cc2-70ef-4b4b-9306-44dd16595050','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','8afb6f01-ae46-447c-acfa-1a6e0964bbba');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('df926af7-bc89-4424-bf20-0f5a8d55846a','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','5f3a8e01-4216-4982-b07b-ad367fe9ef96');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e28496d1-77ca-4f87-8573-b94c7e8c2284','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','67025758-eb65-40b1-a59c-edee1b3ae938');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e3c1df82-85f2-4f5a-8469-bd994a3ab1bf','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','c0ac116b-2b2a-4a09-ba25-0c2fffc12b4d');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('e49be6ae-7121-4a6e-9eb0-d639feb87bc5','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','6c561fe7-2013-4ce5-bf9a-42874b07a99e');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('ecad88b4-6c2e-4343-b53b-0f7f253b6406','db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','6f32a2b6-a552-4a91-a10c-2962af63eca7');
insert  into `freecms_role_func`(`id`,`roleId`,`funcId`) values ('f8f98529-8f63-4fb6-b211-f93cfe134029','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','58fe298f-b448-40bb-a1c0-d81134efa4af');

/*Table structure for table `freecms_role_site` */

DROP TABLE IF EXISTS `freecms_role_site`;

CREATE TABLE `freecms_role_site` (
  `id` varchar(50) NOT NULL,
  `roleid` varchar(50) default NULL,
  `siteid` varchar(50) default NULL,
  `siteadmin` varchar(1) default NULL COMMENT '是否是站点管理员',
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_15` (`roleid`),
  KEY `FK_Reference_16` (`siteid`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`roleid`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`siteid`) REFERENCES `freecms_site` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_站点';

/*Data for the table `freecms_role_site` */

insert  into `freecms_role_site`(`id`,`roleid`,`siteid`,`siteadmin`) values ('47df0463-1e86-4958-bdfb-543a8c145c60','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','7a4d22d6-762b-46e5-895b-d62da52bf9cb','1');

/*Table structure for table `freecms_role_user` */

DROP TABLE IF EXISTS `freecms_role_user`;

CREATE TABLE `freecms_role_user` (
  `id` varchar(36) NOT NULL default 'newid()',
  `roles` varchar(36) NOT NULL,
  `users` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_角色_用户__用户` (`users`),
  KEY `FK_角色_用户__角色` (`roles`),
  CONSTRAINT `FK_角色_用户__用户` FOREIGN KEY (`users`) REFERENCES `freecms_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_角色_用户__角色` FOREIGN KEY (`roles`) REFERENCES `freecms_roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色_用户';

/*Data for the table `freecms_role_user` */

insert  into `freecms_role_user`(`id`,`roles`,`users`) values ('b7b9ea15-47dc-458d-b99d-82d3567addfe','d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','fdc995ef-e96f-4c00-9746-4b5a9b365caa');

/*Table structure for table `freecms_roles` */

DROP TABLE IF EXISTS `freecms_roles`;

CREATE TABLE `freecms_roles` (
  `id` varchar(36) NOT NULL default 'newid()',
  `name` varchar(100) NOT NULL,
  `isOk` char(1) NOT NULL,
  `adduser` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色';

/*Data for the table `freecms_roles` */

insert  into `freecms_roles`(`id`,`name`,`isOk`,`adduser`) values ('d5a82b5b-f0ba-4c7e-8554-26d88ee70a22','站点管理员','1','admin');
insert  into `freecms_roles`(`id`,`name`,`isOk`,`adduser`) values ('db57809a-f8f5-43d5-8c97-8b6ccdd3b9a3','管理员','1','admin');

/*Table structure for table `freecms_site` */

DROP TABLE IF EXISTS `freecms_site`;

CREATE TABLE `freecms_site` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) default NULL,
  `siteDomain` varchar(100) default NULL,
  `sourcePath` varchar(500) default NULL,
  `copyright` varchar(500) default NULL,
  `recordCode` varchar(50) default NULL,
  `parId` varchar(50) default NULL,
  `state` varchar(1) default NULL,
  `url` varchar(500) default NULL,
  `indexTemplet` varchar(50) default NULL,
  `logo` varchar(500) default NULL,
  `orderNum` int(11) default NULL,
  `clickNum` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点';

/*Data for the table `freecms_site` */

insert  into `freecms_site`(`id`,`name`,`siteDomain`,`sourcePath`,`copyright`,`recordCode`,`parId`,`state`,`url`,`indexTemplet`,`logo`,`orderNum`,`clickNum`) values ('7a4d22d6-762b-46e5-895b-d62da52bf9cb','FreeCMS','','FreeCMS','FreeTeam','','','1','','freecms','/upload/7a4d22d6-762b-46e5-895b-d62da52bf9cb/01581850-823e-41cc-b154-94e9bbc00bf3.jpg',NULL,NULL);
insert  into `freecms_site`(`id`,`name`,`siteDomain`,`sourcePath`,`copyright`,`recordCode`,`parId`,`state`,`url`,`indexTemplet`,`logo`,`orderNum`,`clickNum`) values ('80f429ad-ec91-4eca-87c2-82d6cba631de','一级站点','','one','','','','1','','',NULL,NULL,NULL);

/*Table structure for table `freecms_templet` */

DROP TABLE IF EXISTS `freecms_templet`;

CREATE TABLE `freecms_templet` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) default NULL,
  `state` varchar(1) default NULL,
  `orderNum` int(11) default NULL,
  `useSites` varchar(1000) default NULL,
  `useSiteNames` varchar(1000) default NULL,
  `adduser` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板';

/*Data for the table `freecms_templet` */

insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('0def5cc4-a300-478a-b47d-80ff5f5e5af4','工','3',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('b694dd64-e89e-4cb5-8da1-6a51bf97cfa1','要','3',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('f392cd10-13b6-4208-a5a9-77c7fd30bcf5','测试模板','1',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('f5b31ed3-b9e5-4951-80dd-0ddbcc3ca2b7','测试模板','3',1,'7a4d22d6-762b-46e5-895b-d62da52bf9cb;80f429ad-ec91-4eca-87c2-82d6cba631de;','FreeCMS;一级站点;','02debc9f-53cd-4bc9-887b-49ffc4e925f2');
insert  into `freecms_templet`(`id`,`name`,`state`,`orderNum`,`useSites`,`useSiteNames`,`adduser`) values ('freecms','FreeCMS站点模板','1',NULL,'','','02debc9f-53cd-4bc9-887b-49ffc4e925f2');

/*Table structure for table `freecms_unit` */

DROP TABLE IF EXISTS `freecms_unit`;

CREATE TABLE `freecms_unit` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) default NULL,
  `parid` varchar(36) default NULL,
  `isOk` char(1) default NULL,
  `ordernum` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位';

/*Data for the table `freecms_unit` */

insert  into `freecms_unit`(`id`,`name`,`parid`,`isOk`,`ordernum`) values ('freeteam','freeteam','','1',0);

/*Table structure for table `freecms_unit_user` */

DROP TABLE IF EXISTS `freecms_unit_user`;

CREATE TABLE `freecms_unit_user` (
  `id` varchar(36) NOT NULL,
  `unit` varchar(36) default NULL,
  `users` varchar(36) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_Reference_13` (`users`),
  KEY `FK_Reference_14` (`unit`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`users`) REFERENCES `freecms_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`unit`) REFERENCES `freecms_unit` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单位_用户';

/*Data for the table `freecms_unit_user` */

insert  into `freecms_unit_user`(`id`,`unit`,`users`) values ('68853479-c103-4759-8145-ce007b6657ab','freeteam','fdc995ef-e96f-4c00-9746-4b5a9b365caa');

/*Table structure for table `freecms_users` */

DROP TABLE IF EXISTS `freecms_users`;

CREATE TABLE `freecms_users` (
  `id` varchar(36) NOT NULL,
  `loginName` varchar(100) NOT NULL,
  `roleNames` varchar(500) default NULL,
  `name` varchar(100) default NULL,
  `pwd` varchar(100) default NULL,
  `sex` char(1) default NULL,
  `birthday` datetime default NULL,
  `tel` varchar(100) default NULL,
  `mobilephone` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `isOk` char(1) default NULL,
  `lastLoginTime` datetime default NULL,
  `lastestLoginTime` datetime default NULL,
  `loginFailNum` int(11) default NULL,
  `loginNum` int(11) default NULL,
  `addTime` datetime default NULL,
  `unitNames` varchar(500) default NULL,
  `unitIds` varchar(500) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `freecms_users` */

insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`) values ('02debc9f-53cd-4bc9-887b-49ffc4e925f2','admin','管理员;','管理员','523af537946b79c4f8369ed39ba78605','1',NULL,'','','freeteam@foxmail.com','1','2013-01-15 20:34:00','2013-01-15 20:57:26',0,0,NULL,NULL,NULL);
insert  into `freecms_users`(`id`,`loginName`,`roleNames`,`name`,`pwd`,`sex`,`birthday`,`tel`,`mobilephone`,`email`,`isOk`,`lastLoginTime`,`lastestLoginTime`,`loginFailNum`,`loginNum`,`addTime`,`unitNames`,`unitIds`) values ('fdc995ef-e96f-4c00-9746-4b5a9b365caa','freecms','站点管理员;','freecms','523af537946b79c4f8369ed39ba78605','1','2012-11-06 00:00:00','','','','1','2010-01-01 00:00:00','2012-11-28 20:26:55',0,0,'2012-11-28 20:25:41','freeteam;','freeteam;');

/* Procedure structure for procedure `role_del` */

/*!50003 DROP PROCEDURE IF EXISTS  `role_del` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `role_del`(IN roleId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_role_user where roles =roleId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set roleNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_roles u left join freecms_role_user uu on u.id=uu.roles
	where uu.users=userId and u.id!=roleId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `role_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `role_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `role_update`(IN roleId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_role_user where roles =roleId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set roleNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_roles u left join freecms_role_user uu on u.id=uu.roles
	where uu.users=userId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unit_del` */

/*!50003 DROP PROCEDURE IF EXISTS  `unit_del` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `unit_del`(IN unitId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_unit_user where unit =unitId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set unitNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_unit u left join freecms_unit_user uu on u.id=uu.unit
	where uu.users=userId and u.id!=unitId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `unit_update` */

/*!50003 DROP PROCEDURE IF EXISTS  `unit_update` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`%` PROCEDURE `unit_update`(IN unitId varchar(50))
BEGIN 
	
	DECLARE userId VARCHAR(50) DEFAULT '' ;
	
	declare my_cursor CURSOR FOR select users from freecms_unit_user where unit =unitId ;
	
	 
        OPEN my_cursor;
         
        FETCH my_cursor INTO userId;
         
        WHILE ( userId is not null) DO
	
	update freecms_users 
	set unitNames=(
	select GROUP_CONCAT(NAME SEPARATOR  ';') 
	FROM freecms_unit u left join freecms_unit_user uu on u.id=uu.unit
	where uu.users=userId
	) 
	where id=userId;
           
          FETCH my_cursor INTO userId;
        END WHILE;
        CLOSE my_cursor;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;