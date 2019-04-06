# Summary

Survey Project Manager II (SPM-II) has been developed to manage various kinds of digital archiving projects in accordance with the International Stadards. In addition to this aim, this system enables users to practice “Work-Oriented” approach in digital archiving projects. By using this system, users can manage digital archiving projects and outcums on the online server. Although Survey Project Manager is previously developed by using PHP and Javascripts (SPM-I), this system is currently developed by using Ruby on Rails in this version. 

SPM-II is deeply related to the “Survey Data Collector (SDC)”, which is the offline digital archiving system. SDC is originaly developed as a tethering system for Sony A6000 and A6300, and lately extended as the total digital archiving system managing various kinds of digital data in combination with the database. The ideal workflow is that users collect and/or manage digitally archived outcomes on SDC and integrate these datasets on the SPM-II to share and/or publish their resultants.

# Concept
## International Standards

Althogh there are some international standards such as the Dublin Core or CIDOC CRM potentially applied for digital archiving project, SPM-II adopted ISO 19100 series. This series of standards. This series of standards provides a set of standards of application schema, metadata, data types, encoding rules, and etc for Geographic information. 

Reason why SPM-II adopted ISO 191100 series is its concept of the “Geographic Feature”, which is defined as the “General Feature Model (GFM)” on the ISO 19109. Accroding to this concept, various kinds of real objects can be ordered and classified by the meta-model of GFM, which defines class name, attributes, operation and relationship between classes. 

The most essential issue on digital archiving system is versatility. However, in reality, features or properties of each real object are varied, and it is not easy to construct varsatile digital archiving system. Corresponding to this issue, Dr. Yu Fujimoto adovocated “Simple Object Profile (SOP)” that provides a kind of expanding rules of GFM. By applying this idea, various kinds of real objects can be managed by a single application schema. 

## The Simple Object Profile
The concept of SOP is composed by three layers of meta schema; the first layer reflrects the structure of GFM directly, the second layer expands the first layer to exchange dataset among different systems and the third layer expands the second layer to apply GFM for specified field to apply GFM indirectly.

SPM-II and SDC are well implementation of the SOP’s third layer. Basically, both SPM-II and SDC applies same model based on SOP’s third layer, but SPM-II includes some extra classes concerning to project information. 

## The Work-oriented approach

In general, digital archiving projects consists of three steps. The first step is collecting and digitizing objects by digital devices such as cameras or scanners. In this step, project members will stay at main field either indoor or outdoor, they will collect objects to digitize and digitize them day by day. Through this step, digital files are stored on laptop, removable storages or online storages when the field is under the online environment. The second step is constructing database. In this step, digitized objects are ordered, editited and related to specific information about the object on the Data-Base. The final step is publishing. In this step, digitized objects and their related information will be put on well formated layout. In some cases some objects can be published, and others cannot. 

The important point is the way of data management in each step. If the project is larger, engaged memberswill be larger and the term of the project will be longer.In such situation, it is difficult to manage pilled of various kinds digital data with systematic manner by manual. Structure of directories and rules for file names, for example, is deeply depending on individual, and this sisuation makes it difficult to trace previously made digital files.  