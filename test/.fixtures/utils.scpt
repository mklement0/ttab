FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T Returns a Boolean that indicates if the OS version is 10.13 (High Sierra) or above.     � 	 	 �   R e t u r n s   a   B o o l e a n   t h a t   i n d i c a t e s   i f   t h e   O S   v e r s i o n   i s   1 0 . 1 3   ( H i g h   S i e r r a )   o r   a b o v e .   
  
 i         I      �������� *0 ishighsierraorabove isHighSierraOrAbove��  ��    k     K       r     	    n         1    ��
�� 
sisv  l     ����  I    ������
�� .sysosigtsirr   ��� null��  ��  ��  ��    o      ���� 0 osver osVer      r   
 #    J   
        n  
     1    ��
�� 
txdl  1   
 ��
�� 
ascr   ��  J          !�� ! m     " " � # #  .��  ��    J       $ $  % & % o      ���� 0 orgtids orgTIDs &  '�� ' n      ( ) ( 1    !��
�� 
txdl ) 1    ��
�� 
ascr��     * + * r   $ , , - , n   $ * . / . 4   ' *�� 0
�� 
cobj 0 m   ( )����  / n   $ ' 1 2 1 2  % '��
�� 
citm 2 o   $ %���� 0 osver osVer - o      ���� 0 majorver majorVer +  3 4 3 r   - 5 5 6 5 n   - 3 7 8 7 4   0 3�� 9
�� 
cobj 9 m   1 2����  8 n   - 0 : ; : 2  . 0��
�� 
citm ; o   - .���� 0 osver osVer 6 o      ���� 0 minorver minorVer 4  < = < r   6 ; > ? > o   6 7���� 0 orgtids orgTIDs ? n      @ A @ 1   8 :��
�� 
txdl A 1   7 8��
�� 
ascr =  B�� B G   < K C D C @   < A E F E c   < ? G H G o   < =���� 0 majorver majorVer H m   = >��
�� 
nmbr F m   ? @����  D @   D I I J I c   D G K L K o   D E���� 0 minorver minorVer L m   E F��
�� 
nmbr J m   G H���� ��     M N M l     ��������  ��  ��   N  O P O l     �� Q R��   Q ] W !! The Terminal object model changed with respect to tabs in macOS 10.13 (High Sierra)    R � S S �   ! !   T h e   T e r m i n a l   o b j e c t   m o d e l   c h a n g e d   w i t h   r e s p e c t   t o   t a b s   i n   m a c O S   1 0 . 1 3   ( H i g h   S i e r r a ) P  T U T l     �� V W��   V I C !! Tabs now act as windows in their own right in certain respects.    W � X X �   ! !   T a b s   n o w   a c t   a s   w i n d o w s   i n   t h e i r   o w n   r i g h t   i n   c e r t a i n   r e s p e c t s . U  Y Z Y l     �� [ \��   [ Q K !! Each tab is now a window that must be activated via frontmost of <tab>.    \ � ] ] �   ! !   E a c h   t a b   i s   n o w   a   w i n d o w   t h a t   m u s t   b e   a c t i v a t e d   v i a   f r o n t m o s t   o f   < t a b > . Z  ^ _ ^ l     ��������  ��  ��   _  ` a ` i     b c b I      �������� 0 gettabcount getTabCount��  ��   c Z     ( d e�� f d l     g���� g n     h i h I    �������� *0 ishighsierraorabove isHighSierraOrAbove��  ��   i  f     ��  ��   e O    j k j I   �� l��
�� .corecnte****       **** l n     m n m 2   ��
�� 
ttab n 2   ��
�� 
cwin��   k m    	 o o�                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��   f O   ( p q p I    '�� r��
�� .corecnte****       **** r 2    #��
�� 
ttab��   q n    s t s 4   �� u
�� 
cwin u m    ����  t m     v v�                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��   a  w x w l     ��������  ��  ��   x  y z y i     { | { I      �������� 0 getactivetab getActiveTab��  ��   | Z     ! } ~��  } l     ����� � n     � � � I    �������� *0 ishighsierraorabove isHighSierraOrAbove��  ��   �  f     ��  ��   ~ O    � � � 4   �� �
�� 
cwin � m    ����  � m    	 � ��                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��    O   ! � � � 1     ��
�� 
tcnt � n    � � � 4   �� �
�� 
cwin � m    ����  � m     � ��                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��   z  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 setactivetab setActiveTab �  ��� � o      ���� 0 	targettab 	targetTab��  ��   � Z     " � ��� � � l     ����� � n     � � � I    �������� *0 ishighsierraorabove isHighSierraOrAbove��  ��   �  f     ��  ��   � O    � � � r     � � � m    ��
�� boovtrue � n       � � � 1    ��
�� 
pisf � o    ���� 0 	targettab 	targetTab � m    	 � ��                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��   � O   " � � � r    ! � � � o    ���� 0 	targettab 	targetTab � 1     ��
�� 
tcnt � n    � � � 4   �� �
�� 
cwin � m    ����  � m     � ��                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� :0 waituntilterminaltabnotbusy waitUntilTerminalTabNotBusy �  � � � o      ���� 0 	tabtarget 	tabTarget �  ��� � o      ���� 0 timeoutsecs timeoutSecs��  ��   � k     ; � �  � � � q       � � ������ 0 elapsedsofar elapsedSoFar��   �  � � � r      � � � m     ����   � o      ���� 0 elapsedsofar elapsedSoFar �  ��� � O    ; � � � V    : � � � k    5 � �  � � � Z    ) � ����� � @     � � � o    ���� 0 elapsedsofar elapsedSoFar � o    ���� 0 timeoutsecs timeoutSecs � R    %�� ���
�� .ascrerr ****      � **** � b    $ � � � b    " � � � b      � � � b     � � � m     � � � � �  T e r m i n a l   t a b   ' � l    ����� � n     � � � 1    ��
�� 
pnam � m    ��
�� 
ttab��  ��   � m     � � � � � F '   i s   u n e x p e c t e d l y   s t i l l   b u s y   a f t e r   � o     !���� 0 timeoutsecs timeoutSecs � m   " # � � � � �    s e c o n d s .��  ��  ��   �  � � � I  * /� ��~
� .sysodelanull��� ��� nmbr � m   * + � � ?��������~   �  ��} � r   0 5 � � � [   0 3 � � � o   0 1�|�| 0 elapsedsofar elapsedSoFar � m   1 2 � � ?������� � o      �{�{ 0 elapsedsofar elapsedSoFar�}   � l    ��z�y � n     � � � 1    �x
�x 
busy � o    �w�w 0 	tabtarget 	tabTarget�z  �y   � m     � ��                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  ��   �  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s � ��s   � J D Closes a Terminal window after waiting for it to no longer be busy.    � � � � �   C l o s e s   a   T e r m i n a l   w i n d o w   a f t e r   w a i t i n g   f o r   i t   t o   n o   l o n g e r   b e   b u s y . �  � � � l     �r � ��r   � E ? Times out with an error after the specified number of seconds.    � � � � ~   T i m e s   o u t   w i t h   a n   e r r o r   a f t e r   t h e   s p e c i f i e d   n u m b e r   o f   s e c o n d s . �  � � � l     �q � ��q   � � � The raison d'�tre for this handler is that blindly trying to close a Terminal window that's running a process (other than the shell) will result in an asynchronous, interactive 'really close?' prompt.    � � � ��   T h e   r a i s o n   d ' � t r e   f o r   t h i s   h a n d l e r   i s   t h a t   b l i n d l y   t r y i n g   t o   c l o s e   a   T e r m i n a l   w i n d o w   t h a t ' s   r u n n i n g   a   p r o c e s s   ( o t h e r   t h a n   t h e   s h e l l )   w i l l   r e s u l t   i n   a n   a s y n c h r o n o u s ,   i n t e r a c t i v e   ' r e a l l y   c l o s e ? '   p r o m p t . �  � � � i     � � � I      �p ��o�p *0 closeterminalwindow closeTerminalWindow �  � � � o      �n�n 0 win   �  �m  o      �l�l 0 timeoutsecs timeoutSecs�m  �o   � k     I  q       �k�j�k 0 elapsedsofar elapsedSoFar�j    r      m     �i�i   o      �h�h 0 elapsedsofar elapsedSoFar 	�g	 O    I

 k    H  V    < k    7  Z    +�f�e @     o    �d�d 0 elapsedsofar elapsedSoFar o    �c�c 0 timeoutsecs timeoutSecs R    '�b�a
�b .ascrerr ****      � **** b    & b    $ b    " b       m    !! �"" " T e r m i n a l   w i n d o w   '  l   #�`�_# n    $%$ 1    �^
�^ 
pnam% o    �]�] 0 win  �`  �_   m     !&& �'' F '   i s   u n e x p e c t e d l y   s t i l l   b u s y   a f t e r   o   " #�\�\ 0 timeoutsecs timeoutSecs m   $ %(( �))    s e c o n d s .�a  �f  �e   *+* I  , 1�[,�Z
�[ .sysodelanull��� ��� nmbr, m   , --- ?��������Z  + .�Y. r   2 7/0/ [   2 5121 o   2 3�X�X 0 elapsedsofar elapsedSoFar2 m   3 433 ?�������0 o      �W�W 0 elapsedsofar elapsedSoFar�Y   l   4�V�U4 n    565 1    �T
�T 
busy6 n    787 1    �S
�S 
tcnt8 o    �R�R 0 win  �V  �U   9:9 l  = B;<=; I  = B�Q>�P
�Q .sysodelanull��� ��� nmbr> m   = >�O�O �P  < U O just for good measure - apparently, `busy` sometimes prematurely reports false   = �?? �   j u s t   f o r   g o o d   m e a s u r e   -   a p p a r e n t l y ,   ` b u s y `   s o m e t i m e s   p r e m a t u r e l y   r e p o r t s   f a l s e: @�N@ I  C H�MA�L
�M .coreclosnull���     obj A o   C D�K�K 0 win  �L  �N   m    BB�                                                                                      @ alis    J  Macintosh HD               ߯M�BD ����Terminal.app                                                   ����߯M�        ����  
 cu             	Utilities   -/:System:Applications:Utilities:Terminal.app/     T e r m i n a l . a p p    M a c i n t o s h   H D  *System/Applications/Utilities/Terminal.app  / ��  �g   � CDC l     �J�I�H�J  �I  �H  D EFE l     �GGH�G  G | v Synchronously activate the specified application. I.e., when this subroutine returns, the specified app is frontmost.   H �II �   S y n c h r o n o u s l y   a c t i v a t e   t h e   s p e c i f i e d   a p p l i c a t i o n .   I . e . ,   w h e n   t h i s   s u b r o u t i n e   r e t u r n s ,   t h e   s p e c i f i e d   a p p   i s   f r o n t m o s t .F JKJ l     �FLM�F  L J D Required, because on 10.10+ the activate command is *asynchronous*.   M �NN �   R e q u i r e d ,   b e c a u s e   o n   1 0 . 1 0 +   t h e   a c t i v a t e   c o m m a n d   i s   * a s y n c h r o n o u s * .K OPO l     �EQR�E  Q F @ Set TMOUT to adjust the timeout after which an error is raised.   R �SS �   S e t   T M O U T   t o   a d j u s t   t h e   t i m e o u t   a f t e r   w h i c h   a n   e r r o r   i s   r a i s e d .P TUT i    VWV I      �DX�C�D 0 syncactivate syncActivateX Y�BY o      �A�A 0 appname appName�B  �C  W k     FZZ [\[ q      ]] �@^�@ 0 tmout TMOUT^ �?�>�? 0 elapsedsofar elapsedSoFar�>  \ _`_ l    abca r     ded m     �=�= e o      �<�< 0 tmout TMOUTb   secs.   c �ff    s e c s .` ghg r    iji m    �;�;  j o      �:�: 0 elapsedsofar elapsedSoFarh k�9k O    Flml k    Enn opo I   �8�7�6
�8 .miscactvnull��� ��� null�7  �6  p q�5q V    Ersr k    @tt uvu Z   4wx�4�3w ?    !yzy o    �2�2 0 elapsedsofar elapsedSoFarz o     �1�1 0 tmout TMOUTx R   $ 0�0{�/
�0 .ascrerr ****      � ****{ b   & /|}| b   & -~~ b   & +��� b   & )��� m   & '�� ���  '� o   ' (�.�. 0 appname appName� m   ) *�� ��� 8 '   f a i l e d   t o   a c t i v a t e   w i t h i n   o   + ,�-�- 0 tmout TMOUT} m   - .�� ���    s e c o n d s .�/  �4  �3  v ��� I  5 :�,��+
�, .sysodelanull��� ��� nmbr� m   5 6�� ?��������+  � ��*� r   ; @��� [   ; >��� o   ; <�)�) 0 elapsedsofar elapsedSoFar� m   < =�� ?�������� o      �(�( 0 elapsedsofar elapsedSoFar�*  s H    �� 1    �'
�' 
pisf�5  m 4    �&�
�& 
capp� o   
 �%�% 0 appname appName�9  U ��$� l     �#�"�!�#  �"  �!  �$       	� ���������   � �������� *0 ishighsierraorabove isHighSierraOrAbove� 0 gettabcount getTabCount� 0 getactivetab getActiveTab� 0 setactivetab setActiveTab� :0 waituntilterminaltabnotbusy waitUntilTerminalTabNotBusy� *0 closeterminalwindow closeTerminalWindow� 0 syncactivate syncActivate� � ������ *0 ishighsierraorabove isHighSierraOrAbove�  �  � ����� 0 osver osVer� 0 orgtids orgTIDs� 0 majorver majorVer� 0 minorver minorVer� ���� "���
�	��
� .sysosigtsirr   ��� null
� 
sisv
� 
ascr
� 
txdl
� 
cobj
� 
citm
�
 
nmbr�	 � 
� 
bool� L*j  �,E�O��,�kvlvE[�k/E�Z[�l/��,FZO��-�k/E�O��-�l/E�O���,FO��&�
 	��&��&� � c������ 0 gettabcount getTabCount�  �  �  � � o�� ��� *0 ishighsierraorabove isHighSierraOrAbove
� 
cwin
�  
ttab
�� .corecnte****       ****� ))j+   � *�-�-j UY ��k/ 	*�-j U� �� |���������� 0 getactivetab getActiveTab��  ��  �  � �� ������� *0 ishighsierraorabove isHighSierraOrAbove
�� 
cwin
�� 
tcnt�� ")j+   � *�k/EUY ��k/ *�,EU� �� ����������� 0 setactivetab setActiveTab�� ����� �  ���� 0 	targettab 	targetTab��  � ���� 0 	targettab 	targetTab� �� ��������� *0 ishighsierraorabove isHighSierraOrAbove
�� 
pisf
�� 
cwin
�� 
tcnt�� #)j+   � e��,FUY ��k/ �*�,FU� �� ����������� :0 waituntilterminaltabnotbusy waitUntilTerminalTabNotBusy�� ����� �  ������ 0 	tabtarget 	tabTarget�� 0 timeoutsecs timeoutSecs��  � �������� 0 	tabtarget 	tabTarget�� 0 timeoutsecs timeoutSecs�� 0 elapsedsofar elapsedSoFar� 	 ��� ����� � � ���
�� 
busy
�� 
ttab
�� 
pnam
�� .sysodelanull��� ��� nmbr�� <jE�O� 4 1h��,E�� )j���,%�%�%�%Y hO�j O��E�[OY��U� �� ����������� *0 closeterminalwindow closeTerminalWindow�� ����� �  ������ 0 win  �� 0 timeoutsecs timeoutSecs��  � �������� 0 win  �� 0 timeoutsecs timeoutSecs�� 0 elapsedsofar elapsedSoFar� 
B����!��&(-����
�� 
tcnt
�� 
busy
�� 
pnam
�� .sysodelanull��� ��� nmbr
�� .coreclosnull���     obj �� JjE�O� B 3h��,�,E�� )j��,%�%�%�%Y hO�j O��E�[OY��Okj O�j 	U� ��W���������� 0 syncactivate syncActivate�� ����� �  ���� 0 appname appName��  � �������� 0 appname appName�� 0 tmout TMOUT�� 0 elapsedsofar elapsedSoFar� 	���������������� 
�� 
capp
�� .miscactvnull��� ��� null
�� 
pisf
�� .sysodelanull��� ��� nmbr�� G�E�OjE�O*�/ 8*j O /h*�,�� )j�%�%�%�%Y hO�j O��E�[OY��U ascr  ��ޭ