function response = singleTrial(wptr, imgMatrix_Fixation, imgMat)
% Define the keyboard and present images for single trail
% F - like - 1  J - dislike - 0  None response - -1

% prepare time parameters
stimulus_onset = 2;
blank_Interval = 2;

% ���ð�����׼�����
KbName('UnifyKeyNames');

% ׼��������������ָ��
KeyPressArray = [KbName('f') KbName('j')];      

% show the corresponding stimuli
Screen('PutImage',wptr, imgMat);
Screen('PutImage',wptr, imgMatrix_Fixation);
Screen('Flip',wptr);

t0 = GetSecs;   %������ʱ��

while 1     %�ȴ����Է�Ӧ
    [~, ~, key_Code] = KbCheck;      %��������
    
    % �������Ϊ f j �����е�����һ��
    if key_Code(KbName('f'))
        response = 1;
    elseif key_Code(KbName('j'))
        response = 0;
    else 
        response = -1;
    end

    % �������ΪESC ����״̬
    if key_Code(KbName('ESCAPE')) 
        response = 'break';
        break;
    end
    
    %�̶�һ��ʱ���ͼƬ��ʧ
    tt = GetSecs;   %������ʱ��
    if tt-t0>stimulus_onset
        break
    end
    
end

% show the fixation  
Screen('PutImage',wptr, imgMatrix_Fixation);
Screen('Flip',wptr);
WaitSecs(blank_Interval);    

end