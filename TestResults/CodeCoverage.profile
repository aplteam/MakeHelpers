�  �            �              W       W      ����������������         W             ֓w                   ���d                                         ���d    �                                                                             x   �!�        ���d        /"                     �      ��������        x   �!�        ���d        /"             �������          �!�        ���d�                            '      1       Documentation regarding the contents of this file              '      1       -------------------------------------------------              '      1       * The first component contains this documentation              '      P       * The second one contains what has been watched; this will eventually be used to
       '      .         compile the caption for the coverage report.         '      O       * The third component holds the names of functions and operators to be ignored.        '      Y       * The fourth component holds a matrix with as many rows as test runs have been performed:       	       '      (         [;1] Timestamp ("YYYY-MM-DD hh:mm:ss")       '      G         [;2] The result of the "APLVersion" property + info about the edition        (                 [ ; 3 ]   �#W A   i n   K B 	       '      &       * Components five to nine are reserved         '      W       * The tenth one is originally empty. when "ProcessData" or "ProcessDataAndCreateReport"        '      <         is called the resulting data is written to this component.           '      Q       After the tenth one all components carry a matrix with n rows and 4 columns. n is              '      ;       determined by the number of fns/oprs involved. The columns:     
       '      )       [;1] The name of the function or operator              '      H       [;2] Either empty or a vector of line numbers there were *not* executed.       '      3            Empty in case none or all lines were executed.            '             [;3] Coverage percentage.              '      =       [;4] Total number of lines that can be expected to be tested.   ��������          �!�        ���d�                        ��ST               �      @	      �	      �
      �      p      �      p      �      h3                                              �   �!�        ���d�                            '             #.MakeHelpers.MakeHelpers       ��������        �   �!�        ���d�                        ����       �   �!�        ���d�                             '              ��������        �   �!�        ���d�                         ~�u       H  �!�        ���de�        '                           '             2023-07-02 17:49:45 0          (      5       W i n d o w s - 6 4   �"  1 8 . 2 . 4 6 9 4 3 . 0   �"  W   �"  D e v e l o p m e n t   �"  U n i c o d e              '             52  2   ��������        H  �!�        ���de�        '                ����       h   �!�        ���de�        '              ��������        h   �!�        ���de�        '                 ��*�       h   �!�        ���de�        '              ��������        h   �!�        ���de�        '                 ��+�       h   �!�        ���de�        '              ��������        h   �!�        ���de�        '                 ��,�       h   �!�        ���de�        '              ��������        h   �!�        ���de�        '                 ��-�       h   �!�        ���di�        '              ��������        h   �!�        ���di�        '              	   ��6�	       �$                                                          '      3       #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionNested A d 
       "      +        
 &'(),-.123	/0 ' (        "      U       	       "      !       
!"$&'()*,-./1              '      3       #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionSimple A d 
       "      +        
 &'(),-.123	/0 ' (        "      U       	       "      !       
!"$&'()*,-./1              '              #.MakeHelpers.MakeHelpers.Assert       "                            "      d              "                     '             #.MakeHelpers.MakeHelpers.CR           "                         "      d              "                           '      5       #.MakeHelpers.MakeHelpers.CompileVersionNumberPattern o        "              	
          "      W              "              
       '      0       #.MakeHelpers.MakeHelpers.ConvertMarkdownToHtml5       "              	
 
         "      d              "             	
   	       '      $       #.MakeHelpers.MakeHelpers.CopyBetterH e        "               	
"#$)*       "      K              "             	
 !"#$'           '              #.MakeHelpers.MakeHelpers.CopyTo	       "      (        	
!"#$%(1 &'       "      G              "             !#$&)*,-./	       '      #       #.MakeHelpers.MakeHelpers.CreateAPI H e #       #      z                 	 
                      ) * + / 2 3 4 5 6 7 ? @ A B C D E F G H I J K L O R S T U V W X Y Z [ \ ] ^ _ ` a  � � � � � � � � �   b c d e j k l m n o p q r s t u v w x y z { ! " # $ ( 8 9 : ; < P Q f g M N            "      V              #      _                      ! " # % & * + , - / 0 2 3 4 5 6 7 8 9 : = ? @ A B C D E F G H I J K L M P S T U W Z [ ] a b c d e f h j k l m n o p q r s t u v w x y z | }  � � � � � � � � � �   
       '      *       #.MakeHelpers.MakeHelpers.CreateAPIfromCFGp e r        "              	
          "      [              "                         '      2       #.MakeHelpers.MakeHelpers.CreateStandAloneExeParms. C r        "              	
         "      ^              "             
      	       '      '       #.MakeHelpers.MakeHelpers.CreateZipFile        "              	
          "      \              "             	
   
       '      )       #.MakeHelpers.MakeHelpers.DropBuildNumber p e r        "              	

         "      d              "                
       '      0       #.MakeHelpers.MakeHelpers.EstablishProjectFolder       "                       "      C              "                  
       '      /       #.MakeHelpers.MakeHelpers.FetchLaterUserCommand        "              	
!%&        "      K              "             !"#    
       '      *       #.MakeHelpers.MakeHelpers.GetMyUCMDsFolderp e r        "              	
        "      S              "             	
  	       '      '       #.MakeHelpers.MakeHelpers.GetPackageCfg        "              	
          "      d              "             	   
       '      +       #.MakeHelpers.MakeHelpers.GetUserHomeFolder e r        "              	
#         "      ,              "                          '      3       #.MakeHelpers.MakeHelpers.IncreaseBuildIDInFunction I n 
       "      ,        	
$,- !"#%&)*+         "      `              "             
 "$%&')       '             #.MakeHelpers.MakeHelpers.Inita        "                       "      K              "                        '      2       #.MakeHelpers.MakeHelpers.MakeStandAloneRunTimeExe. M a        "      1        	
 !"#$%&'():;<=>?@AE           "      F       
       "      ,       "#$%&'(*+,-./1238:;<=>?@BC           '             #.MakeHelpers.MakeHelpers.Pause        "                       "      d              "                         '              #.MakeHelpers.MakeHelpers.Public       "              	
          "      d              "             	
       	       '      '       #.MakeHelpers.MakeHelpers.PutPackageCfg        "                     "                     "                  	       '      (       #.MakeHelpers.MakeHelpers.RecreateFolder       "              	
       "      X              "             	
       
       '      0       #.MakeHelpers.MakeHelpers.RemoveStuffButSetupExe       "              	
        "      Y              "      	       
              '              #.MakeHelpers.MakeHelpers.Select       "                       "      d              "                          '      5       #.MakeHelpers.MakeHelpers.SplitVersionFromBuildNumber p        "              	
         "      d              "             	       '      !       #.MakeHelpers.MakeHelpers.Version e H e        "                         "      d              "                    	       '      !       #.MakeHelpers.MakeHelpers.YesOrNo e H e        "                       "      d              "                          '              #.MakeHelpers.MakeHelpers.API.CR       "                     "                     "                           '      9       #.MakeHelpers.MakeHelpers.API.CompileVersionNumberPattern . C o        "                     "      d              "                     '      4       #.MakeHelpers.MakeHelpers.API.ConvertMarkdownToHtml5A P        "                     "      d              "              	       '      (       #.MakeHelpers.MakeHelpers.API.CopyBetter       "                     "      d              "              	       '      $       #.MakeHelpers.MakeHelpers.API.CopyToH e        "                     "      d              "              	       '      '       #.MakeHelpers.MakeHelpers.API.CreateAPI        "                     "      d              "              
       '      .       #.MakeHelpers.MakeHelpers.API.CreateAPIfromCFGr        "                     "      d              "                     '      6       #.MakeHelpers.MakeHelpers.API.CreateStandAloneExeParmsP        "                     "      d              "              
       '      +       #.MakeHelpers.MakeHelpers.API.CreateZipFile e r        "                     "      d              "              
       '      -       #.MakeHelpers.MakeHelpers.API.DropBuildNumber r        "                     "      d              "                     '      3       #.MakeHelpers.MakeHelpers.API.FetchLaterUserCommand A P        "                     "      d              "              
       '      .       #.MakeHelpers.MakeHelpers.API.GetMyUCMDsFolderr        "                     "      d              "              
       '      +       #.MakeHelpers.MakeHelpers.API.GetPackageCfg e r        "                     "      d              "              
       '      /       #.MakeHelpers.MakeHelpers.API.GetUserHomeFolder        "                     "      d              "                     '      7       #.MakeHelpers.MakeHelpers.API.IncreaseBuildIDInFunction        "                     "      d              "                     '      6       #.MakeHelpers.MakeHelpers.API.MakeStandAloneRunTimeExeP        "                     "      d              "              	       '      #       #.MakeHelpers.MakeHelpers.API.Pause H e        "                     "      d              "              
       '      +       #.MakeHelpers.MakeHelpers.API.PutPackageCfg e r        "                     "      d              "              
       '      ,       #.MakeHelpers.MakeHelpers.API.RecreateFoldere r        "                     "      d              "                     '      4       #.MakeHelpers.MakeHelpers.API.RemoveStuffButSetupExeA P        "                     "      d              "              	       '      $       #.MakeHelpers.MakeHelpers.API.SelectH e        "                     "      d              "                     '      9       #.MakeHelpers.MakeHelpers.API.SplitVersionFromBuildNumber . S p        "                     "      d              "              	       '      %       #.MakeHelpers.MakeHelpers.API.Version e        "                     "                     "                    	       '      %       #.MakeHelpers.MakeHelpers.API.YesOrNo e        "                     "      d              "              ��������        �$  �!�        ���di� �       '      6       
   ȏ�
       �#  �!�        ���d� �       '      6                     '      3       #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionNested A d        "             
&'(),-.1/           "      U       	       "      !       
!"$&'()*,-./1              '      3       #.MakeHelpers.MakeHelpers.AddBuildIDtoVersionSimple A d        "             
&'(),-.1/           "      U       	       "      !       
!"$&'()*,-./1              '              #.MakeHelpers.MakeHelpers.Assert       "                     "      d              "                     '             #.MakeHelpers.MakeHelpers.CR           "                           "      d              "                           '      5       #.MakeHelpers.MakeHelpers.CompileVersionNumberPattern o        "                       "      W              "              
       '      0       #.MakeHelpers.MakeHelpers.ConvertMarkdownToHtml5       "             	
          "      d              "             	
   	       '      $       #.MakeHelpers.MakeHelpers.CopyBetterH e        "             	
"#$          "      K              "             	
 !"#$'           '              #.MakeHelpers.MakeHelpers.CopyTo       "             !#$&              "      G              "             !#$&)*,-./	       '      #       #.MakeHelpers.MakeHelpers.CreateAPI H e        #      R                     * + / 2 3 4 5 6 7 ? @ A B C D E F G H I J K L S T U W Z [ ] a  � � � � � �  b c d e j k l m n o p q r s t u v w x y z ! " # 8 9 : P f M            "      V              #      _                      ! " # % & * + , - / 0 2 3 4 5 6 7 8 9 : = ? @ A B C D E F G H I J K L M P S T U W Z [ ] a b c d e f h j k l m n o p q r s t u v w x y z | }  � � � � � � � � � �   
       '      *       #.MakeHelpers.MakeHelpers.CreateAPIfromCFGp e r        "      
                    "      [              "                         '      2       #.MakeHelpers.MakeHelpers.CreateStandAloneExeParms. C r        "             
              "      ^              "             
      	       '      '       #.MakeHelpers.MakeHelpers.CreateZipFile        "             	
           "      \              "             	
   
       '      )       #.MakeHelpers.MakeHelpers.DropBuildNumber p e r        "                       "      d              "                
       '      0       #.MakeHelpers.MakeHelpers.EstablishProjectFolder       "                          "      C              "                  
       '      /       #.MakeHelpers.MakeHelpers.FetchLaterUserCommand        "             !        "      K              "             !"#    
       '      *       #.MakeHelpers.MakeHelpers.GetMyUCMDsFolderp e r        "             	
          "      S              "             	
  	       '      '       #.MakeHelpers.MakeHelpers.GetPackageCfg        "             	          "      d              "             	   
       '      +       #.MakeHelpers.MakeHelpers.GetUserHomeFolder e r        "                    "      ,              "                          '      3       #.MakeHelpers.MakeHelpers.IncreaseBuildIDInFunction I n        "             
$ "%&)        "      `              "             
 "$%&')       '             #.MakeHelpers.MakeHelpers.Inita        "                         "      K              "                        '      2       #.MakeHelpers.MakeHelpers.MakeStandAloneRunTimeExe. M a        "             "#$%&'(:;<=>?@        "      F       
       "      ,       "#$%&'(*+,-./1238:;<=>?@BC           '             #.MakeHelpers.MakeHelpers.Pause        "                         "      d              "                         '              #.MakeHelpers.MakeHelpers.Public       "             	
              "      d              "             	
       	       '      '       #.MakeHelpers.MakeHelpers.PutPackageCfg        "                     "                     "                  	       '      (       #.MakeHelpers.MakeHelpers.RecreateFolder       "             	
        "      X              "             	
       
       '      0       #.MakeHelpers.MakeHelpers.RemoveStuffButSetupExe       "             
       "      Y              "      	       
              '              #.MakeHelpers.MakeHelpers.Select       "                          "      d              "                          '      5       #.MakeHelpers.MakeHelpers.SplitVersionFromBuildNumber p        "                    "      d              "             	       '      !       #.MakeHelpers.MakeHelpers.Version e H e        "                           "      d              "                    	       '      !       #.MakeHelpers.MakeHelpers.YesOrNo e H e        "                          "      d              "                          '              #.MakeHelpers.MakeHelpers.API.CR       "                     "                     "                           '      9       #.MakeHelpers.MakeHelpers.API.CompileVersionNumberPattern . C o        "                     "      d              "                     '      4       #.MakeHelpers.MakeHelpers.API.ConvertMarkdownToHtml5A P        "                     "      d              "              	       '      (       #.MakeHelpers.MakeHelpers.API.CopyBetter       "                     "      d              "              	       '      $       #.MakeHelpers.MakeHelpers.API.CopyToH e        "                     "      d              "              	       '      '       #.MakeHelpers.MakeHelpers.API.CreateAPI        "                     "      d              "              
       '      .       #.MakeHelpers.MakeHelpers.API.CreateAPIfromCFGr        "                     "      d              "                     '      6       #.MakeHelpers.MakeHelpers.API.CreateStandAloneExeParmsP        "                     "      d              "              
       '      +       #.MakeHelpers.MakeHelpers.API.CreateZipFile e r        "                     "      d              "              
       '      -       #.MakeHelpers.MakeHelpers.API.DropBuildNumber r        "                     "      d              "                     '      3       #.MakeHelpers.MakeHelpers.API.FetchLaterUserCommand A P        "                     "      d              "              
       '      .       #.MakeHelpers.MakeHelpers.API.GetMyUCMDsFolderr        "                     "      d              "              
       '      +       #.MakeHelpers.MakeHelpers.API.GetPackageCfg e r        "                     "      d              "              
       '      /       #.MakeHelpers.MakeHelpers.API.GetUserHomeFolder        "                     "      d              "                     '      7       #.MakeHelpers.MakeHelpers.API.IncreaseBuildIDInFunction        "                     "      d              "                     '      6       #.MakeHelpers.MakeHelpers.API.MakeStandAloneRunTimeExeP        "                     "      d              "              	       '      #       #.MakeHelpers.MakeHelpers.API.Pause H e        "                     "      d              "              
       '      +       #.MakeHelpers.MakeHelpers.API.PutPackageCfg e r        "                     "      d              "              
       '      ,       #.MakeHelpers.MakeHelpers.API.RecreateFoldere r        "                     "      d              "                     '      4       #.MakeHelpers.MakeHelpers.API.RemoveStuffButSetupExeA P        "                     "      d              "              	       '      $       #.MakeHelpers.MakeHelpers.API.SelectH e        "                     "      d              "                     '      9       #.MakeHelpers.MakeHelpers.API.SplitVersionFromBuildNumber . S p        "                     "      d              "              	       '      %       #.MakeHelpers.MakeHelpers.API.Version e        "                     "                     "                    	       '      %       #.MakeHelpers.MakeHelpers.API.YesOrNo e        "                     "      d              "              ��������        �#  �!�        ���d� �       '      6       
   M���       ��������p              p                      ����      �  �            �              W       W      ����������������         W             ���;                   ���d                                         ���d    �                                                                             h3      �#  �!�        ���d� �       '      6       �              �      @	      �	      �
      �      p      �      p      �      h3                                               W       W      p                  ��������p                          p      p                         �$                                 ����