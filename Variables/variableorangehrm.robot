*** Variables ***
${url} =    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser} =    chrome
${username} =    xpath =   //*[@name='username']
${data} =    Admin
${data1} =    admin123
${password} =    xpath  =    //*[@name='password']
${login} =  xpath =  //*[@type='submit']
${timelink} =  //*[@href='/web/index.php/time/viewTimeModule']
${reclink} =  xpath =  //*[@href='/web/index.php/recruitment/viewRecruitmentModule']
${network} =    //div[text()='Network Administrator']
${jobtitle} =    (//div[@class='oxd-select-text-input'])[1]    