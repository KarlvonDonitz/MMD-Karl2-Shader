@echo off
setlocal ENABLEDELAYEDEXPANSION
title K2��Ⱦ������...
:begin
set Rank=0
set n=0
title Karl2 ������...
echo ��ѡ�����÷�ʽ��
echo 1.ѡ��Ĭ������   2.�������ã�ϵͳ����   3. �Զ���
set /p c=���������֣�
if %c% equ 1 goto default
if %c% equ 2 goto automatic
if %c% equ 3 goto Manual
:default
title Ĭ������ѡ����...
cls
echo ��ѡ�����ã�
echo 1.���   2.��    3.�е�     4.��     5.���
set /p c=���������֣�
if %c% equ 1 goto minimum
if %c% equ 2 goto low
if %c% equ 3 goto medium
if %c% equ 4 goto high
if %c% equ 5 goto highest
goto default
:automatic
cls
title �Լ���������...
echo �����������Կ����̣�
echo 1.NVIDIA 2.AMD 3.Inter 4.����
set /p c=���������֣�
if %c% equ 1 goto NVIDIA
if %c% equ 2 goto AMD
if %c% equ 3 goto redefault
if %c% equ 4 goto redefault
:redefault
cls
echo �ܱ�Ǹ����ϵͳ��û֧������ѡ����Կ�ϵ��
echo ������ѡ��ʹ��Ĭ�����û����Զ���
goto begin
:NVIDIA
cls
echo ���Կ���ʲô����ģ�
echo 1.GTX 2.GT 3.GTS
set /p l=����������:
if %l% equ 1 set /a Rank=Rank+1
if %l% equ 2 set /a Rank=Rank
if %l% equ 3 set /a Rank=Rank+1
cls
echo ���Կ���ʲôϵ�еģ�
echo 1. 10ϵ��  2. 9ϵ��   3. 8ϵ��    4. 7ϵ��     5.6ϵ��
set /p s=����������:
if %s% equ 1 set /a Rank=Rank+1
if %s% equ 2 set /a Rank=Rank+1
if %s% equ 3 set /a Rank=Rank+1
if %s% equ 4 set /a Rank=Rank
if %s% equ 5 set /a Rank=Rank
cls
echo ���Կ���ʲôϵ�еȼ��ģ�
echo 1. 80(Ti)  2. 70   3. 60    4. 50(Ti)   5. 40   6. 30    7. 20     8. 10
set /p e=����������:
if %e% equ 1 set /a Rank=Rank+3
if %e% equ 2 set /a Rank=Rank+3
if %e% equ 3 set /a Rank=Rank+2
if %e% equ 4 set /a Rank=Rank+2
if %e% equ 5 set /a Rank=Rank+1
if %e% equ 6 set /a Rank=Rank+1
if %e% equ 7 set /a Rank=Rank+1
if %e% equ 8 set /a Rank=Rank
cls
if %l% equ 1 set l=GTX
if %l% equ 2 set l=GT
if %l% equ 3 set l=GTS
if %s% equ 1 set s=10
if %s% equ 2 set s=9
if %s% equ 3 set s=8
if %s% equ 4 set s=7
if %s% equ 5 set s=6
if %e% equ 1 set e=80(Ti)
if %e% equ 2 set e=70
if %e% equ 3 set e=60
if %e% equ 4 set e=50(Ti)
if %e% equ 5 set e=40
if %e% equ 6 set e=30
if %e% equ 7 set e=20
if %e% equ 8 set e=10
set n=1
echo �����Կ���%l%%s%%e%ô��
echo 1.�ǵ�     2.����
set /p c=����������:
if %c% equ 2 goto automatic
if %c% equ 1 goto rank
goto NVIDIA
:AMD
cls
echo ���Կ������ĸ�ϵ�У�
echo 1.Rx   2.R    3.HD
set /p l=����������:
if %l% equ 1 (
set /a rank=rank+1 
set l=Rx
goto AMDRx
)

if %l% equ 2 (
set /a rank=rank
set l=R
goto AMDR
)

if %l% equ 3 (
set /a rank=rank
set l=HD
goto AMDHD
)
:AMDRx
cls
echo ���������Կ��ĺ�׺����
set /p num=���������֣�Ӧ��3λ��:
set /a up=%num%/100
set /a down=%num% %% 100
if %up% equ 4 set /a rank=rank+1
if %up% equ 5 set /a rank=rank+2
if %down% equ 80 set /a rank=rank+2
if %down% equ 70 set /a rank=rank+1
if %down% equ 60 set /a rank=rank+1
cls
echo �����Կ�ΪRx %num%ô��
echo 1.��  2.����
set /p c=����������:
if %c% equ 1 goto rank
if %c% equ 2 goto AMD
goto AMD
:AMDR
cls
echo ���������Կ��ĺ�׺����
set /p num=���������֣��м�ո�ʡ�ԣ�:
set /a up=%num%/1000
set /a down=%num% %% 1000
if %up% equ 9 set /a rank=rank+3
if %up% equ 7 set /a rank=rank+2
if %up% equ 5 set /a rank=rank
if %down% gtr 299 set /a rank=rank+2
if %down% leq 299 set /a rank=rank+1
cls
echo �����Կ�ΪR%up% %down%ô��
echo 1.��  2.����
set /p c=����������:
if %c% equ 1 goto rank
if %c% equ 2 goto AMD
goto AMD
goto rank
:AMDHD
cls
echo ���������Կ��ĺ�׺����
set /p num=���������֣�Ӧ��4λ��:
set /a up=%num%/1000
set /a down=%num% %% 1000
if %up% equ 7 set /a rank=rank+3
if %up% equ 6 set /a rank=rank+2
if %up% equ 5 set /a rank=rank+1
if %up% equ 4 set /a rank=rank
if %down% gtr 499 set /a rank=rank+2
if %down% leq 499 set /a rank=rank+1
goto rank
:Manual
cls
title �Զ���������...
echo ����Դ�Ƿ����ã�
choice /C YN /M "ȷ���밴 Y�����밴 N"
if !ERRORLEVEL! equ 2 set MAIN_LIGHT_ENABLE=0
if !ERRORLEVEL! equ 1 set MAIN_LIGHT_ENABLE=1
cls
echo ��Ӱ����
echo 1.���    2. ��     3.�е�     4. ��      5.���
choice /C 12345 /M "��ѡ��һλ���֣�1-5��"
if !ERRORLEVEL! equ 5 set SHADOW_QUALITY=5
if !ERRORLEVEL! equ 4 set SHADOW_QUALITY=4
if !ERRORLEVEL! equ 3 set SHADOW_QUALITY=3
if !ERRORLEVEL! equ 2 set SHADOW_QUALITY=2
if !ERRORLEVEL! equ 1 set SHADOW_QUALITY=1
cls
echo ����ͼ������
echo 1.����    2.����ҷ�ת��������
choice /C 12 /M "��ѡ��һλ���֣�1-2��"
if !ERRORLEVEL! equ 2 set IBL_QUALITY=2
if !ERRORLEVEL! equ 1 set IBL_QUALITY=1
cls
echo �Ƿ�������
echo 1.����    2.�ر�
if !ERRORLEVEL! equ 2 set FOG_ENABLE=2
if !ERRORLEVEL! equ 1 set FOG_ENABLE=1
cls
echo ȫ�������ڱ�
echo 1.�ر�   2. 32����     3.64����     4.128����
choice /C 1234 /M "��ѡ��һλ���֣�1-4��"
if !ERRORLEVEL! equ 4 set SSDO_QUALITY=4
if !ERRORLEVEL! equ 3 set SSDO_QUALITY=3
if !ERRORLEVEL! equ 2 set SSDO_QUALITY=2
if !ERRORLEVEL! equ 1 set SSDO_QUALITY=1
cls
echo �Ƿ����ø߼���Ļ�ռ䷴�䣿
choice /C YN /M "ȷ���밴 Y�����밴 N"
if !ERRORLEVEL! equ 2 set SSR_QUALITY=0
if !ERRORLEVEL! equ 1 set SSR_QUALITY=1
cls
echo �Ƿ�������Ļ�ռ�α���ɢ�䣿
choice /C YN /M "ȷ���밴 Y�����밴 N"
if !ERRORLEVEL! equ 2 set SSSS_QUALITY=0
if !ERRORLEVEL! equ 1 set SSSS_QUALITY=1
set HDR_ENABLE=1
cls
echo ����ģ��
echo 1.������    2. 12.7%%�м�Ҷ� 100����   3. 18%%�м�Ҷ� 100����
choice /C 123 /M "��ѡ��һλ���֣�1-3��"
if !ERRORLEVEL! equ 3 set HDR_EYE_ADAPTATION=3
if !ERRORLEVEL! equ 2 set HDR_EYE_ADAPTATION=2
if !ERRORLEVEL! equ 1 set HDR_EYE_ADAPTATION=1
cls
echo ����ģʽ
echo 1.������    2.Ӱ��     3.����      4. �����ع�      5.�����ع�
choice /C 12345 /M "��ѡ��һλ���֣�1-5��"
if !ERRORLEVEL! equ 5 set HDR_BLOOM_MODE=4
if !ERRORLEVEL! equ 4 set HDR_BLOOM_MODE=3
if !ERRORLEVEL! equ 3 set HDR_BLOOM_MODE=2
if !ERRORLEVEL! equ 2 set HDR_BLOOM_MODE=1
if !ERRORLEVEL! equ 1 set HDR_BLOOM_MODE=0
cls
echo ҫ��ģʽ
echo 1.������    2.��ɫ     3.��ɫ    4.�Զ�
choice /C 1234 /M "��ѡ��һλ���֣�1-4��"
if !ERRORLEVEL! equ 4 set HDR_FLARE_MODE=3
if !ERRORLEVEL! equ 3 set HDR_FLARE_MODE=2
if !ERRORLEVEL! equ 2 set HDR_FLARE_MODE=1
if !ERRORLEVEL! equ 1 set HDR_FLARE_MODE=0
cls
echo ҫ���Ƿ���ģʽ
echo 1.������    2.��ɫ��ʽ     3.�Զ���ʽ    4.��ɫҫ��    5.�Զ�ҫ��
choice /C 12345 /M "��ѡ��һλ���֣�1-5��"
if !ERRORLEVEL! equ 5 set HDR_STAR_MODE=4
if !ERRORLEVEL! equ 4 set HDR_STAR_MODE=3
if !ERRORLEVEL! equ 3 set HDR_STAR_MODE=2
if !ERRORLEVEL! equ 2 set HDR_STAR_MODE=1
if !ERRORLEVEL! equ 1 set HDR_STAR_MODE=0
cls
echo ɫ��ӳ��
echo 1.����    2.����ͼ������    3.����     4. ������    5.����(2015)    6.ACES-sRGB        
choice /C 123456 /M "��ѡ��һλ���֣�1-6��"
if !ERRORLEVEL! equ 6 set HDR_TONEMAP_OPERATOR=5
if !ERRORLEVEL! equ 5 set HDR_TONEMAP_OPERATOR=4
if !ERRORLEVEL! equ 4 set HDR_TONEMAP_OPERATOR=3
if !ERRORLEVEL! equ 3 set HDR_TONEMAP_OPERATOR=2
if !ERRORLEVEL! equ 2 set HDR_TONEMAP_OPERATOR=1
if !ERRORLEVEL! equ 1 set HDR_TONEMAP_OPERATOR=0
cls
echo �����
echo 1.������   2.���ٽ��ƿ����(FXAA)  3.��ǿ����������̬ѧ�����(SMAA)x1 �е�      4.��ǿ����������̬ѧ�����(SMAA)x1 ��    5.��ǿ����������̬ѧ�����(SMAA)x2 �е� 6.��ǿ����������̬ѧ�����(SMAA)x2 ���
choice /C 123456 /M "��ѡ��һλ���֣�1-6��"
if !ERRORLEVEL! equ 6 set AA_QUALITY=5
if !ERRORLEVEL! equ 5 set AA_QUALITY=4
if !ERRORLEVEL! equ 4 set AA_QUALITY=3
if !ERRORLEVEL! equ 3 set AA_QUALITY=2
if !ERRORLEVEL! equ 2 set AA_QUALITY=1
if !ERRORLEVEL! equ 1 set AA_QUALITY=0
cls
echo �Ƿ������λ��壿
choice /C YN /M "ȷ���밴 Y�����밴 N"
if !ERRORLEVEL! equ 2 set AA_GBUFFER_FILTER_QUALITY=0
if !ERRORLEVEL! equ 1 set AA_GBUFFER_FILTER_QUALITY=1
cls
echo ��ɢ����
echo 1.������        2.ɫ��          3.ɫ��
choice /C 123 /M "��ѡ��һλ���֣�1-3��"
if !ERRORLEVEL! equ 3 set POST_DISPERSION_MODE=2
if !ERRORLEVEL! equ 2 set POST_DISPERSION_MODE=1
if !ERRORLEVEL! equ 1 set POST_DISPERSION_MODE=0
goto out
:rank
cls
title ϵͳ�����У����Ժ�...
if %rank% gtr 5 set rank=5
if %rank% equ 1 goto minimum
if %rank% equ 2 goto low
if %rank% equ 3 goto medium
if %rank% equ 4 goto high
if %rank% equ 5 goto highest
echo �������
pause
goto rank
:minimum
set SHADOW_QUALITY=1
set SSDO_QUALITY=1
set SSR_QUALITY=1
set SSSS_QUALITY=0
set HDR_BLOOM_MODE=0
set AA_QUALITY=1
goto output
:low
set SHADOW_QUALITY=2
set SSDO_QUALITY=2
set SSR_QUALITY=2
set SSSS_QUALITY=1
set HDR_BLOOM_MODE=1
set AA_QUALITY=1
goto output
:medium
set SHADOW_QUALITY=3
set SSDO_QUALITY=4
set SSR_QUALITY=2
set SSSS_QUALITY=1
set HDR_BLOOM_MODE=1
set AA_QUALITY=1
if %rank% equ 5 (if !n! equ 1 set AA_QUALITY=3)
goto output
:high
set SHADOW_QUALITY=4
set SSDO_QUALITY=5
set SSR_QUALITY=3
set SSSS_QUALITY=1
set HDR_BLOOM_MODE=1
set AA_QUALITY=1
if %rank% equ 5 (if !n! equ 1 set AA_QUALITY=4)
goto output
:highest
set SHADOW_QUALITY=5
set SSDO_QUALITY=6
set SSR_QUALITY=3
set SSSS_QUALITY=1
set HDR_BLOOM_MODE=4
set AA_QUALITY=1
if %rank% equ 5 (if !n! equ 1 set AA_QUALITY=5)
:output
set MAIN_LIGHT_ENABLE=1
set IBL_QUALITY=1
set FOG_ENABLE=1
set HDR_ENABLE=1
set HDR_EYE_ADAPTATION=0
set HDR_FLARE_MODE=0
set HDR_STAR_MODE=0
set HDR_TONEMAP_OPERATOR=4
set POST_DISPERSION_MODE=1
set AA_GBUFFER_FILTER_QUALITY=0
goto out
:out
cls
title �������....
echo #define MAIN_LIGHT_ENABLE %MAIN_LIGHT_ENABLE% > k2.conf
echo #define SHADOW_QUALITY %SHADOW_QUALITY% >>k2.conf
echo #define IBL_QUALITY %IBL_QUALITY% >>k2.conf
echo #define FOG_ENABLE %FOG_ENABLE% >>k2.conf
echo #define SSDO_QUALITY %SSDO_QUALITY% >>k2.conf
echo #define SSR_QUALITY %SSR_QUALITY% >>k2.conf
echo #define SSSS_QUALITY %SSSS_QUALITY% >>k2.conf
echo #define HDR_ENABLE %HDR_ENABLE% >>k2.conf
echo #define HDR_EYE_ADAPTATION %HDR_EYE_ADAPTATION% >>k2.conf
echo #define HDR_BLOOM_MODE %HDR_BLOOM_MODE% >>k2.conf
echo #define HDR_FLARE_MODE %HDR_FLARE_MODE% >>k2.conf
echo #define HDR_STAR_MODE %HDR_STAR_MODE% >>k2.conf
echo #define HDR_TONEMAP_OPERATOR %HDR_TONEMAP_OPERATOR% >>k2.conf
echo #define AA_QUALITY %AA_QUALITY% >>k2.conf
echo #define AA_GBUFFER_FILTER_QUALITY %AA_GBUFFER_FILTER_QUALITY% >>k2.conf
echo #define POST_DISPERSION_MODE %POST_DISPERSION_MODE% >>k2.conf
echo ���.
pause