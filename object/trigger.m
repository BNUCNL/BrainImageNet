%%% ����ǰ��, ��ȡ��ַ,0378���Ǳ�opm������
ioObj = io64;
status = io64(ioObj);
address = hex2dec('0378');

%%%  �ڴ̼���ʾ�׶��з�trigger 
%%%  �������ǵĿ��Բο���μӽ�ȥ��ע��ֻ�ܷ����ĸ�event_id ��1234��ʶ�ĸ��¼�������Ҫ
%%%  ѡһ�£�����������ǿ����event�ĸ�id�㹻��ʶ�ˣ��Ǿ�û������
%%%  �������±�ʾ 1 ���� stimlus��2 ��ʶiti�� 3����cue���ֽ׶Σ� ÿ����Ǻ���һ��0

%trigger for stimulus
 timere = GetSecs;
 io64(ioObj,address,1);
 while GetSecs-timere<0.01
 end
 io64(ioObj,address,0);
  
  
 %%%  trigger for ITI:
 timere = GetSecs;
 io64(ioObj,address,2);
 while GetSecs-timere<0.01
 end
 io64(ioObj,address,0);
  
 %%%  trigger for cue:
 timere = GetSecs;
 io64(ioObj,address,3);
 while GetSecs-timere<0.01
 end
 io64(ioObj,address,0);
  