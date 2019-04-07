# Summary

Survey Project Manager II (SPM-II) has been developed to manage various kinds of digital archiving projects in accordance with the International Stadards. In addition to this apurpos, this system is designed as users can practice “Work-Oriented” approach in digital archiving projects. By using this system, users can manage digital archiving projects and its outcums on the online server. Although Survey Project Manager is previously developed by using PHP and Javascripts (SPM-I), the current version is developed by using Ruby on Rails.

SPM-II is deeply related to the “Survey Data Collector (SDC)”, which is the offline digital archiving system, which is originaly developed as a tethering system for Sony A6000 and A6300, and lately extended as the total digital archiving system. The ideal workflow is that users collect and/or manage digitally archived outcomes on SDC and integrate these datasets on the SPM-II to share and/or publish their resultants.

# Concept
## International Standards

Althogh there are some international standards such as the Dublin Core or CIDOC CRM potentially applied for digital archiving project, SPM-II adopted ISO 19100 series. This series of standards. This series of standards provides a set of standards of application schema, metadata, data types, encoding rules, and etc for Geographic information. 

Reason why SPM-II adopted ISO 191100 series is its concept of the “Geographic Feature”, which is defined as the “General Feature Model (GFM)” on the ISO 19109. Accroding to this concept, various kinds of real objects can be ordered and classified by the meta-model of GFM, which defines class name, attributes, operation and relationship between classes. 

The most essential issue on digital archiving system is versatility. However, in reality, features or properties of each real object are varied, and it is not easy to construct varsatile digital archiving system. Corresponding to this issue, Dr. Yu Fujimoto adovocated “Simple Object Profile (SOP)” that provides a kind of expanding rules of GFM. By applying this idea, various kinds of real objects can be managed by a single application schema. 

## The Simple Object Profile
The concept of SOP is composed by three layers of meta schema; the first layer reflrects the structure of GFM directly, the second layer expands the first layer to exchange dataset among different systems and the third layer expands the second layer to apply GFM for specified field to apply GFM indirectly.

SPM-II and SDC are well implementation of the SOP’s third layer. Basically, both SPM-II and SDC applies same model based on SOP’s third layer, but SPM-II includes some extra classes concerning to project information. 

## The Work-oriented approach

In general, digital archiving projects consists of three steps. The first step is collecting and digitizing objects by digital devices such as cameras or scanners. In this step, project members will visit either indoor or outdoor field, and they will collect objects to digitize and digitize them day by day. Through this step, digital files may be stored on laptop, removable storages or online storages when the field is under the online environment. The second step is constructing database. In this step, digitized objects are ordered, editited and related to specific information about the object on the Data-Base. The final step is publishing. In this step, digitized objects and their related information will be put on well formated layout. In some cases some objects can be published, and others cannot. 

The important point is the way of data management in each step. If the project is larger, engaged members will be larger and the term of the project will be longer as well. In such situation, it is difficult to manage a pilled of various digital data adequately because structure of directories and rules for file names, for example, is deeply depending on individual. 

The basic concept of the Work-Oriented approach is that ordering daily workflow and designing the application schema of database in corresponding with the workflow. Both SDC and SPM-II is based on this concept, and by using these sytems, users can manage digitized outcomes without stress. 

# Requirements

Currently, SPM-II is being developed under the Ubuntu Linux, and tested on it. Although the previous version of SPM is developed by using PHP and Javascripts, current version is constructed with Ruby on Rails environment. Therefore basic knowledge and/or experience of bush on Linux and Ruby and Rails are premised. 