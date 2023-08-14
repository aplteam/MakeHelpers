�  �            �             �      �      ����������������        (}             h�<'                   ���d    �	                                     ���d    )                                                                             h   �!�        ���d��	    /"         �  @   ��������        h   �!�        ���d��	    /"         �  @   �����-��        �  �!�        ���d��	            '  1   Documentation regarding the contents of this file      '  1   -------------------------------------------------      '  1   * The first component contains this documentation      '  P   * The second one contains what has been watched; this will eventually be used to   '  .     compile the caption for the coverage report.     '  O   * The third component holds the names of functions and operators to be ignored.    '  Y   * The fourth component holds a matrix with as many rows as test runs have been performed:      '  (     [;1] Timestamp ("YYYY-MM-DD hh:mm:ss")   '  G     [;2] The result of the "APLVersion" property + info about the edition    (         [ ; 3 ]   �#W A   i n   K B    '  &   * Components five to nine are reserved     '  W   * The tenth one is originally empty. when "ProcessData" or "ProcessDataAndCreateReport"    '  <     is called the resulting data is written to this component.   '  Q   After the tenth one all components carry a matrix with n rows and 4 columns. n is      '  ;   determined by the number of fns/oprs involved. The columns:    '  )   [;1] The name of the function or operator      '  H   [;2] Either empty or a vector of line numbers there were *not* executed.   '  3        Empty in case none or all lines were executed.    '     [;3] Coverage percentage.      '  =   [;4] Total number of lines that can be expected to be tested.   ��������        �  �!�        ���d��	            '  1      k��D               �            �      x      @
      �
      @      �      @      <)      0D      �`                              �   �!�        ���d��            '     #.MakeHelpers.MakeHelpers   ��������        �   �!�        ���d��            '        ��޿       h   �!�        ���d��             '      ��������        h   �!�        ���d��             '         ���D                     �                                2023-08-14 10:24:16    (  2   W i n d o w s   �"  1 8 . 2 . 4 7 4 1 8 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e    '     56  ��������           �!�        ���d~
    '        	   '     W{Ab       h   �!�        ���d~
    '      �����
  �  ��������        h   �!�        ���d~
    '      �����
  �     �\       h   �!�        ���d~
    '      �����
  �  ��������        h   �!�        ���d~
    '      �����
  �     �]       h   �!�        ���d~
    '      �����
  �  ��������        h   �!�        ���d~
    '      �����
  �     �^       h   �!�        ���d~
    '      �����
  �  ��������        h   �!�        ���d~
    '      �����
  �     �_       h   �!�        ���d~
    '      �����
  �  ��������        h   �!�        ���d~
    '      �����
  �  	   �`	       �                     (	      �                 2023-08-14 10:24:16    (  2   W i n d o w s   �"  1 8 . 2 . 4 7 4 1 8 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e    '     56  	   '     2023-08-14 10:24:44    (  2   W i n d o w s   �"  1 8 . 2 . 4 7 4 1 8 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e    '     56  ��������        �  �!�        ���d�A     '        	   '     -��       @  �!�        ���d)    '        	   '     2023-08-14 10:24:16    (  2   W i n d o w s   �"  1 8 . 2 . 4 7 4 1 8 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e    '     56  	   '     2023-08-14 10:24:44    (  2   W i n d o w s   �"  1 8 . 2 . 4 7 4 1 8 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e    '     56  	   '     2023-08-14 10:25:06    (  2   W i n d o w s   �"  1 8 . 2 . 4 7 4 1 8 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e    '     56  ��������        @  �!�        ���d)    '        	   '     ��E�       l      (	      (}              )}               "#%&'()*+,./2      '      #.MakeHelpers.MakeHelpers.CopyTo   "  (    	
!"#$%(1 &'   "  G   
   "     !#$&)*,-./   '  #   #.MakeHelpers.MakeHelpers.CreateAPI A   #  z             	 
                      ) * + / 2 3 4 5 6 7 ? @ A B C D E F G H I J K L O R S T U V W X Y Z [ \ ] ^ _ ` a  � � � � � � � � �   b c d e j k l m n o p q r s t u v w x y z { ! " # $ ( 8 9 : ; < P Q f g M N    "  V   4   #  _                  ! " # % & * + , - / 0 2 3 4 5 6 7 8 9 : = ? @ A B C D E F G H I J K L M P S T U W Z [ ] a b c d e f h j k l m n o p q r s t u v w x y z | }  � � � � � � � � � �      '  *   #.MakeHelpers.MakeHelpers.CreateAPIfromCFGp    "      	
    "  [      "         '  2   #.MakeHelpers.MakeHelpers.CreateStandAloneExeParms.    "       	
 !"#   "  [   
   "     
 !"     '  '   #.MakeHelpers.MakeHelpers.CreateZipFile 	   "      	
    "  \      "     	
      '  )   #.MakeHelpers.MakeHelpers.DropBuildNumber p 	   "      	
   "  d      "           '  0   #.MakeHelpers.MakeHelpers.EstablishProjectFolder   "           "  C      "         '  /   #.MakeHelpers.MakeHelpers.FetchLaterUserCommand    "  !    	
 !"#$'+,     "  D   
   "      "#%'()     '     #.MakeHelpers.MakeHelpers.Frame    "      
     "  S      "     
     '  *   #.MakeHelpers.MakeHelpers.GetMyUCMDsFolderp    "      	
    "  S      "     	
     '  '   #.MakeHelpers.MakeHelpers.GetPackageCfg    "      	
    "  d      "     	      '  '   #.MakeHelpers.MakeHelpers.GetProjectCfg    "  
    	    "  d      "           '  +   #.MakeHelpers.MakeHelpers.GetUserHomeFolder 
   "      	
#     "  ,   	   "          '  3   #.MakeHelpers.MakeHelpers.IncreaseBuildIDInFunction    "  ,    	
$,- !"#%&)*+   "  `   
   "     
 "$%&')   '     #.MakeHelpers.MakeHelpers.Inita    "           "  K      "        '  2   #.MakeHelpers.MakeHelpers.MakeStandAloneRunTimeExe.    "  1    	
 !"#$%&'():;<=>?@AE     "  F      "  ,   "#$%&'(*+,-./1238:;<=>?@BC   '     #.MakeHelpers.MakeHelpers.Pause    "           "  d      "         '      #.MakeHelpers.MakeHelpers.Public   "      	
   "  d      "     	
    '  '   #.MakeHelpers.MakeHelpers.PutPackageCfg    "          "  d      "         '  (   #.MakeHelpers.MakeHelpers.RecreateFolder
   "      	
   "  X   	   "     	
      '  0   #.MakeHelpers.MakeHelpers.RemoveStuffButSetupExe   "      	
    "  Y      "  	   
      '      #.MakeHelpers.MakeHelpers.Select   "         "  d      "          '  5   #.MakeHelpers.MakeHelpers.SplitVersionFromBuildNumber p    "      	
   "  d      "        '  7   #.MakeHelpers.MakeHelpers.UpdateVersionNumberInInno_ISS    "      	
    "  d      "  
   	
     '  !   #.MakeHelpers.MakeHelpers.Version e    "          "  d      "           '  !   #.MakeHelpers.MakeHelpers.YesOrNo e    "         "  d      "          '      #.MakeHelpers.MakeHelpers.API.CR   "         "         "           '  9   #.MakeHelpers.MakeHelpers.API.CompileVersionNumberPattern .    "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.ConvertMarkdownToHtml5   "         "  d      "         '  (   #.MakeHelpers.MakeHelpers.API.CopyBetter   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.CopyTo   "         "  d      "         '  '   #.MakeHelpers.MakeHelpers.API.CreateAPI    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.CreateAPIfromCFGr    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.CreateStandAloneExeParmsP    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.CreateZipFile    "         "  d      "         '  -   #.MakeHelpers.MakeHelpers.API.DropBuildNumber r    "         "  d      "         '  3   #.MakeHelpers.MakeHelpers.API.FetchLaterUserCommand    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.GetMyUCMDsFolderr    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetPackageCfg    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetProjectCfg    "         "  d      "         '  /   #.MakeHelpers.MakeHelpers.API.GetUserHomeFolder    "         "  d      "         '  7   #.MakeHelpers.MakeHelpers.API.IncreaseBuildIDInFunction    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.MakeStandAloneRunTimeExeP    "         "  d      "         '  #   #.MakeHelpers.MakeHelpers.API.Pause    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.PutPackageCfg    "         "  d      "         '  ,   #.MakeHelpers.MakeHelpers.API.RecreateFolder   "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.RemoveStuffButSetupExe   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.Select   "         "  d      "         '  9   #.MakeHelpers.MakeHelpers.API.SplitVersionFromBuildNumber .    "         "  d      "         '  ;   #.MakeHelpers.MakeHelpers.API.UpdateVersionNumberInInno_ISS    "         "  d      "         '  %   #.MakeHelpers.MakeHelpers.API.Version e    "         "         "           '  %   #.MakeHelpers.MakeHelpers.API.YesOrNo e    "         "  d      "      ��������        d  �!�        ���d~
 �   '  <         '  
   h�
       �  �!�        ���d 
 �   '  <         '  3   #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionNested    "     
&'(),-.1/   "  U      "  !   
!"$&'()*,-./1      '  3   #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionSimple    "     
&'(),-.1/   "  U      "  !   
!"$&'()*,-./1      '      #.MakeHelpers.MakeHelpers.Assert   "         "  d      "         '     #.MakeHelpers.MakeHelpers.Box a    "          "  d      "          '     #.MakeHelpers.MakeHelpers.CR   "           "  d      "           '  5   #.MakeHelpers.MakeHelpers.CompileVersionNumberPattern o    "           "  W      "         '  0   #.MakeHelpers.MakeHelpers.ConvertMarkdownToHtml5   "     	
      "  d      "     	
      '  $   #.MakeHelpers.MakeHelpers.CopyBetter
   "      "%&'+,.   "  I      "  !    "#%&'()*+,./2      '      #.MakeHelpers.MakeHelpers.CopyTo	   "     !#$&      "  G   
   "     !#$&)*,-./   '  #   #.MakeHelpers.MakeHelpers.CreateAPI -   #  R                 * + / 2 3 4 5 6 7 ? @ A B C D E F G H I J K L S T U W Z [ ] a  � � � � � �  b c d e j k l m n o p q r s t u v w x y z ! " # 8 9 : P f M    "  V   4   #  _                  ! " # % & * + , - / 0 2 3 4 5 6 7 8 9 : = ? @ A B C D E F G H I J K L M P S T U W Z [ ] a b c d e f h j k l m n o p q r s t u v w x y z | }  � � � � � � � � � �      '  *   #.MakeHelpers.MakeHelpers.CreateAPIfromCFGp    "  
        "  [      "         '  2   #.MakeHelpers.MakeHelpers.CreateStandAloneExeParms. 	   "     
 !"   "  [   
   "     
 !"     '  '   #.MakeHelpers.MakeHelpers.CreateZipFile    "     	
   "  \      "     	
      '  )   #.MakeHelpers.MakeHelpers.DropBuildNumber p    "           "  d      "           '  0   #.MakeHelpers.MakeHelpers.EstablishProjectFolder   "          "  C      "         '  /   #.MakeHelpers.MakeHelpers.FetchLaterUserCommand    "      "#'    "  D   
   "      "#%'()     '     #.MakeHelpers.MakeHelpers.Frame    "     
      "  S      "     
     '  *   #.MakeHelpers.MakeHelpers.GetMyUCMDsFolderp    "     	
      "  S      "     	
     '  '   #.MakeHelpers.MakeHelpers.GetPackageCfg    "     	      "  d      "     	      '  '   #.MakeHelpers.MakeHelpers.GetProjectCfg    "           "  d      "           '  +   #.MakeHelpers.MakeHelpers.GetUserHomeFolder    "        "  ,   	   "          '  3   #.MakeHelpers.MakeHelpers.IncreaseBuildIDInFunction 
   "     
$ "%&)    "  `   
   "     
 "$%&')   '     #.MakeHelpers.MakeHelpers.Inita    "         "  K      "        '  2   #.MakeHelpers.MakeHelpers.MakeStandAloneRunTimeExe.    "     "#$%&'(:;<=>?@    "  F      "  ,   "#$%&'(*+,-./1238:;<=>?@BC   '     #.MakeHelpers.MakeHelpers.Pause    "         "  d      "         '      #.MakeHelpers.MakeHelpers.Public   "     	
    "  d      "     	
    '  '   #.MakeHelpers.MakeHelpers.PutPackageCfg    "         "  d      "         '  (   #.MakeHelpers.MakeHelpers.RecreateFolder   "     	
    "  X   	   "     	
      '  0   #.MakeHelpers.MakeHelpers.RemoveStuffButSetupExe   "     
   "  Y      "  	   
      '      #.MakeHelpers.MakeHelpers.Select   "          "  d      "          '  5   #.MakeHelpers.MakeHelpers.SplitVersionFromBuildNumber p    "        "  d      "        '  7   #.MakeHelpers.MakeHelpers.UpdateVersionNumberInInno_ISS    "  
   	
     "  d      "  
   	
     '  !   #.MakeHelpers.MakeHelpers.Version e    "           "  d      "           '  !   #.MakeHelpers.MakeHelpers.YesOrNo e    "          "  d      "          '      #.MakeHelpers.MakeHelpers.API.CR   "         "         "           '  9   #.MakeHelpers.MakeHelpers.API.CompileVersionNumberPattern .    "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.ConvertMarkdownToHtml5   "         "  d      "         '  (   #.MakeHelpers.MakeHelpers.API.CopyBetter   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.CopyTo   "         "  d      "         '  '   #.MakeHelpers.MakeHelpers.API.CreateAPI    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.CreateAPIfromCFGr    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.CreateStandAloneExeParmsP    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.CreateZipFile    "         "  d      "         '  -   #.MakeHelpers.MakeHelpers.API.DropBuildNumber r    "         "  d      "         '  3   #.MakeHelpers.MakeHelpers.API.FetchLaterUserCommand    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.GetMyUCMDsFolderr    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetPackageCfg    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetProjectCfg    "         "  d      "         '  /   #.MakeHelpers.MakeHelpers.API.GetUserHomeFolder    "         "  d      "         '  7   #.MakeHelpers.MakeHelpers.API.IncreaseBuildIDInFunction    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.MakeStandAloneRunTimeExeP    "         "  d      "         '  #   #.MakeHelpers.MakeHelpers.API.Pause    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.PutPackageCfg    "         "  d      "         '  ,   #.MakeHelpers.MakeHelpers.API.RecreateFolder   "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.RemoveStuffButSetupExe   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.Select   "         "  d      "         '  9   #.MakeHelpers.MakeHelpers.API.SplitVersionFromBuildNumber .    "         "  d      "         '  ;   #.MakeHelpers.MakeHelpers.API.UpdateVersionNumberInInno_ISS    "         "  d      "         '  %   #.MakeHelpers.MakeHelpers.API.Version e    "         "         "           '  %   #.MakeHelpers.MakeHelpers.API.YesOrNo e    "         "  d      "      ��������        �  �!�        ���d 
 �   '  <         '  
   ,�W�       d  �!�        ���d�A  �   '  <         '  3   #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionNested    "  +    
 &'(),-.123	/0    "  U      "  !   
!"$&'()*,-./1      '  3   #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionSimple    "  +    
 &'(),-.123	/0    "  U      "  !   
!"$&'()*,-./1      '      #.MakeHelpers.MakeHelpers.Assert   "            "  d      "         '     #.MakeHelpers.MakeHelpers.Box a 
   "      	
      "  d      "          '     #.MakeHelpers.MakeHelpers.CR   "          "  d      "           '  5   #.MakeHelpers.MakeHelpers.CompileVersionNumberPattern o    "      	
    "  W      "         '  0   #.MakeHelpers.MakeHelpers.ConvertMarkdownToHtml5	   "      	
    "  d      "     	
      '  $   #.MakeHelpers.MakeHelpers.CopyBetter   "  )    	
 !"%&'+,-.145      "  I      "  !    "#%&'()*+,./2      '      #.MakeHelpers.MakeHelpers.CopyTo   "  (    	
!"#$%(1 &'   "  G   
   "     !#$&)*,-./   '  #   #.MakeHelpers.MakeHelpers.CreateAPI A   #  z             	 
                      ) * + / 2 3 4 5 6 7 ? @ A B C D E F G H I J K L O R S T U V W X Y Z [ \ ] ^ _ ` a  � � � � � � � � �   b c d e j k l m n o p q r s t u v w x y z { ! " # $ ( 8 9 : ; < P Q f g M N    "  V   4   #  _                  ! " # % & * + , - / 0 2 3 4 5 6 7 8 9 : = ? @ A B C D E F G H I J K L M P S T U W Z [ ] a b c d e f h j k l m n o p q r s t u v w x y z | }  � � � � � � � � � �      '  *   #.MakeHelpers.MakeHelpers.CreateAPIfromCFGp    "      	
     "  [      "         '  2   #.MakeHelpers.MakeHelpers.CreateStandAloneExeParms.    "       	
 !"#   "  [   
   "     
 !"     '  '   #.MakeHelpers.MakeHelpers.CreateZipFile 	   "      	
    "  \      "     	
      '  )   #.MakeHelpers.MakeHelpers.DropBuildNumber p 	   "      	
   "  d      "           '  0   #.MakeHelpers.MakeHelpers.EstablishProjectFolder   "            "  C      "         '  /   #.MakeHelpers.MakeHelpers.FetchLaterUserCommand    "  !    	
 !"#$'+,      "  D   
   "      "#%'()     '     #.MakeHelpers.MakeHelpers.Frame    "      
      "  S      "     
     '  *   #.MakeHelpers.MakeHelpers.GetMyUCMDsFolderp    "      	
     "  S      "     	
     '  '   #.MakeHelpers.MakeHelpers.GetPackageCfg    "      	
    "  d      "     	      '  '   #.MakeHelpers.MakeHelpers.GetProjectCfg    "  
    	     "  d      "           '  +   #.MakeHelpers.MakeHelpers.GetUserHomeFolder 
   "      	
#      "  ,   	   "          '  3   #.MakeHelpers.MakeHelpers.IncreaseBuildIDInFunction    "  ,    	
$,- !"#%&)*+   "  `   
   "     
 "$%&')   '     #.MakeHelpers.MakeHelpers.Inita    "            "  K      "        '  2   #.MakeHelpers.MakeHelpers.MakeStandAloneRunTimeExe.    "  1    	
 !"#$%&'():;<=>?@AE      "  F      "  ,   "#$%&'(*+,-./1238:;<=>?@BC   '     #.MakeHelpers.MakeHelpers.Pause    "            "  d      "         '      #.MakeHelpers.MakeHelpers.Public   "      	
   "  d      "     	
    '  '   #.MakeHelpers.MakeHelpers.PutPackageCfg    "          "  d      "         '  (   #.MakeHelpers.MakeHelpers.RecreateFolder
   "      	
   "  X   	   "     	
      '  0   #.MakeHelpers.MakeHelpers.RemoveStuffButSetupExe   "      	
     "  Y      "  	   
      '      #.MakeHelpers.MakeHelpers.Select   "         "  d      "          '  5   #.MakeHelpers.MakeHelpers.SplitVersionFromBuildNumber p    "      	
   "  d      "        '  7   #.MakeHelpers.MakeHelpers.UpdateVersionNumberInInno_ISS    "      	
    "  d      "  
   	
     '  !   #.MakeHelpers.MakeHelpers.Version e    "          "  d      "           '  !   #.MakeHelpers.MakeHelpers.YesOrNo e    "         "  d      "          '      #.MakeHelpers.MakeHelpers.API.CR   "         "         "           '  9   #.MakeHelpers.MakeHelpers.API.CompileVersionNumberPattern .    "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.ConvertMarkdownToHtml5   "         "  d      "         '  (   #.MakeHelpers.MakeHelpers.API.CopyBetter   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.CopyTo   "         "  d      "         '  '   #.MakeHelpers.MakeHelpers.API.CreateAPI    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.CreateAPIfromCFGr    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.CreateStandAloneExeParmsP    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.CreateZipFile    "         "  d      "         '  -   #.MakeHelpers.MakeHelpers.API.DropBuildNumber r    "         "  d      "         '  3   #.MakeHelpers.MakeHelpers.API.FetchLaterUserCommand    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.GetMyUCMDsFolderr    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetPackageCfg    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetProjectCfg    "         "  d      "         '  /   #.MakeHelpers.MakeHelpers.API.GetUserHomeFolder    "         "  d      "         '  7   #.MakeHelpers.MakeHelpers.API.IncreaseBuildIDInFunction    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.MakeStandAloneRunTimeExeP    "         "  d      "         '  #   #.MakeHelpers.MakeHelpers.API.Pause    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.PutPackageCfg    "         "  d      "         '  ,   #.MakeHelpers.MakeHelpers.API.RecreateFolder   "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.RemoveStuffButSetupExe   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.Select   "         "  d      "         '  9   #.MakeHelpers.MakeHelpers.API.SplitVersionFromBuildNumber .    "         "  d      "         '  ;   #.MakeHelpers.MakeHelpers.API.UpdateVersionNumberInInno_ISS    "         "  d      "         '  %   #.MakeHelpers.MakeHelpers.API.Version e    "         "         "           '  %   #.MakeHelpers.MakeHelpers.API.YesOrNo e    "         "  d      "      ��������        d  �!�        ���d�A  �   '  <         '     X�       d  �!�        ���d) �   '  <         '  3   #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionNested    "  +    
 &'(),-.123	/0    "  U      "  !   
!"$&'()*,-./1      '  3   #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionSimple    "  +    
 &'(),-.123	/0    "  U      "  !   
!"$&'()*,-./1      '      #.MakeHelpers.MakeHelpers.Assert   "            "  d      "         '     #.MakeHelpers.MakeHelpers.Box a 
   "      	
      "  d      "          '     #.MakeHelpers.MakeHelpers.CR   "          "  d      "           '  5   #.MakeHelpers.MakeHelpers.CompileVersionNumberPattern o    "      	
    "  W      "         '  0   #.MakeHelpers.MakeHelpers.ConvertMarkdownToHtml5	   "      	
    "  d      "     	
      '  $   #.MakeHelpers.MakeHelpers.CopyBetter   "  )    	
 !"%&'+,-.145      "  I      "  !    "#%&'()*+,./2      '      #.MakeHelpers.MakeHelpers.CopyTo   "  (    	
!"#$%(1 &'   "  G   
   "     !#$&)*,-./   '  #   #.MakeHelpers.MakeHelpers.CreateAPI A   #  z             	 
                      ) * + / 2 3 4 5 6 7 ? @ A B C D E F G H I J K L O R S T U V W X Y Z [ \ ] ^ _ ` a  � � � � � � � � �   b c d e j k l m n o p q r s t u v w x y z { ! " # $ ( 8 9 : ; < P Q f g M N    "  V   4   #  _                  ! " # % & * + , - / 0 2 3 4 5 6 7 8 9 : = ? @ A B C D E F G H I J K L M P S T U W Z [ ] a b c d e f h j k l m n o p q r s t u v w x y z | }  � � � � � � � � � �      '  *   #.MakeHelpers.MakeHelpers.CreateAPIfromCFGp    "      	
     "  [      "         '  2   #.MakeHelpers.MakeHelpers.CreateStandAloneExeParms.    "       	
 !"#   "  [   
   "     
 !"     '  '   #.MakeHelpers.MakeHelpers.CreateZipFile 	   "      	
    "  \      "     	
      '  )   #.MakeHelpers.MakeHelpers.DropBuildNumber p 	   "      	
   "  d      "           '  0   #.MakeHelpers.MakeHelpers.EstablishProjectFolder   "            "  C      "         '  /   #.MakeHelpers.MakeHelpers.FetchLaterUserCommand    "  !    	
 !"#$'+,      "  D   
   "      "#%'()     '     #.MakeHelpers.MakeHelpers.Frame    "      
      "  S      "     
     '  *   #.MakeHelpers.MakeHelpers.GetMyUCMDsFolderp    "      	
     "  S      "     	
     '  '   #.MakeHelpers.MakeHelpers.GetPackageCfg    "      	
    "  d      "     	      '  '   #.MakeHelpers.MakeHelpers.GetProjectCfg    "  
    	     "  d      "           '  +   #.MakeHelpers.MakeHelpers.GetUserHomeFolder 
   "      	
#      "  ,   	   "          '  3   #.MakeHelpers.MakeHelpers.IncreaseBuildIDInFunction    "  ,    	
$,- !"#%&)*+   "  `   
   "     
 "$%&')   '     #.MakeHelpers.MakeHelpers.Inita    "            "  K      "        '  2   #.MakeHelpers.MakeHelpers.MakeStandAloneRunTimeExe.    "  1    	
 !"#$%&'():;<=>?@AE      "  F      "  ,   "#$%&'(*+,-./1238:;<=>?@BC   '     #.MakeHelpers.MakeHelpers.Pause    "            "  d      "         '      #.MakeHelpers.MakeHelpers.Public   "      	
   "  d      "     	
    '  '   #.MakeHelpers.MakeHelpers.PutPackageCfg    "          "  d      "         '  (   #.MakeHelpers.MakeHelpers.RecreateFolder
   "      	
   "  X   	   "     	
      '  0   #.MakeHelpers.MakeHelpers.RemoveStuffButSetupExe   "      	
     "  Y      "  	   
      '      #.MakeHelpers.MakeHelpers.Select   "         "  d      "          '  5   #.MakeHelpers.MakeHelpers.SplitVersionFromBuildNumber p    "      	
   "  d      "        '  7   #.MakeHelpers.MakeHelpers.UpdateVersionNumberInInno_ISS    "      	
    "  d      "  
   	
     '  !   #.MakeHelpers.MakeHelpers.Version e    "          "  d      "           '  !   #.MakeHelpers.MakeHelpers.YesOrNo e    "         "  d      "          '      #.MakeHelpers.MakeHelpers.API.CR   "         "         "           '  9   #.MakeHelpers.MakeHelpers.API.CompileVersionNumberPattern .    "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.ConvertMarkdownToHtml5   "         "  d      "         '  (   #.MakeHelpers.MakeHelpers.API.CopyBetter   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.CopyTo   "         "  d      "         '  '   #.MakeHelpers.MakeHelpers.API.CreateAPI    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.CreateAPIfromCFGr    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.CreateStandAloneExeParmsP    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.CreateZipFile    "         "  d      "         '  -   #.MakeHelpers.MakeHelpers.API.DropBuildNumber r    "         "  d      "         '  3   #.MakeHelpers.MakeHelpers.API.FetchLaterUserCommand    "         "  d      "         '  .   #.MakeHelpers.MakeHelpers.API.GetMyUCMDsFolderr    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetPackageCfg    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.GetProjectCfg    "         "  d      "         '  /   #.MakeHelpers.MakeHelpers.API.GetUserHomeFolder    "         "  d      "         '  7   #.MakeHelpers.MakeHelpers.API.IncreaseBuildIDInFunction    "         "  d      "         '  6   #.MakeHelpers.MakeHelpers.API.MakeStandAloneRunTimeExeP    "         "  d      "         '  #   #.MakeHelpers.MakeHelpers.API.Pause    "         "  d      "         '  +   #.MakeHelpers.MakeHelpers.API.PutPackageCfg    "         "  d      "         '  ,   #.MakeHelpers.MakeHelpers.API.RecreateFolder   "         "  d      "         '  4   #.MakeHelpers.MakeHelpers.API.RemoveStuffButSetupExe   "         "  d      "         '  $   #.MakeHelpers.MakeHelpers.API.Select   "         "  d      "         '  9   #.MakeHelpers.MakeHelpers.API.SplitVersionFromBuildNumber .    "         "  d      "         '  ;   #.MakeHelpers.MakeHelpers.API.UpdateVersionNumberInInno_ISS    "         "  d      "         '  %   #.MakeHelpers.MakeHelpers.API.Version e    "         "         "           '  %   #.MakeHelpers.MakeHelpers.API.YesOrNo e    "         "  d      "      ��������        d  �!�        ���d) �   '  <         '     G��       ׂ������                                      ����      �  �            �             �      �      ����������������        (}             N{�                   ���d    �	                                     ���d    )                                                                             �`      d  �!�        ���d) �   '  <         '  �              �            �      x      @
      �
      @      �      @      <)      0D      �`                              (}      (}                         ׂ������                           �      �      (	      (}          l              (}                 �      �                         �      (	      �                 (	      (	              �                                          ����