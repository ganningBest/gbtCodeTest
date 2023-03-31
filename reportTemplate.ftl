<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Document</title>
    <script>
        window.onload = function () {
            var base64Imgs = document.getElementsByClassName("base64Img");
            if (base64Imgs.length > 0) {
                for (var i = 0; i < base64Imgs.length; i++) {
                    var base64Img = base64Imgs[i];
                    var url = base64Img.getAttribute("src");
                    base64Img.setAttribute("src", "data:image/png;base64," + ajax(url));
                }
            }
        };

        function ajax(url) {
            // XMLHttpRequest对象用于在后台与服务器交换数据
            var xhr = new XMLHttpRequest();
            xhr.open('GET', url, false);
            xhr.send();
            // readyState == 4说明请求已完成
            if (xhr.readyState == 4 && xhr.status == 200 || xhr.status == 304) {
                return xhr.responseText;
            }
        }
    </script>
    <style>
        html, body {
            height: 100%;
            font-size: 17px;
            line-height: 35px;
            font-family: "SimSun";
        }

        h1 {
            font-size: 50px;
            text-align: center;
            padding-top: 240px;
            margin-bottom: 280px;
        }

        h2 {
            font-size: 40px;
            text-align: center;
            margin: 50px 0 250px;
        }

        .first_page {
            overflow: visible;
            margin-left: 55px;
            margin-right: 55px;
        }

        .new_page {
            page-break-before: always;
            page-break-after: always;
            box-sizing: border-box;
            overflow: visible;
            margin-bottom: 10px;
            margin-left: 55px;
            margin-right: 55px;
        }

        .paragraph {
            text-indent: 2em;
        }

        .declare_tit {
            display: block;
            margin: 20px 0;
        }

        .declare_txt {
            margin-bottom: 30px;
        }

        .message_box {
            margin-left: 10px;
            font-weight: 500;
        }

        .message_box h3 {
            font-size: 17px;
            display:inline-block;
        }

        .message_box label {
            display: inline-block;
            width: 210px;
            margin-right: 10px;
            font-size: 16px;
            font-weight: 500;
            text-align: justify;
            text-align-last: justify;
            -moz-text-align-last: justify;
        }

        .realname label{
            width: 265px;
        }

        .message_box div span {
            vertical-align: top;
            display: inline-block;
            width: 370px;
            font-size: 16px;
            font-weight: 500;
        }

        .realname div span {
            width: 315px;
        }


        .task_table {
            width: 650px;
        }

        .task_td {
            font-size: 16px;
            line-height: 22px;
            padding: 10px 11px;
            word-break: break-all;
        }

        .task_td:nth-of-type(1) {
            text-align: center;
            white-space: nowrap;
        }

        .border {
            min-width: 160px;
            padding: 0 3px;
            border-bottom: 1px solid #000;
        }

        .seal {
            margin: 50px 0 0;
            font-size: 18px;
            line-height: 40px;
            font-weight: 500;
            text-align: right;
        }

        .seal_place {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
<div class="root">
    <div class="first_page">
        <h1>e签宝证据报告</h1>
        <div class="message_box">
            <div><label>出证申请人：</label><span>${(issueRecord.applicant)!''}</span></div>
            <div><label>申请出证时间：</label><span>${(issueRecord.applyTime?datetime)!''}</span></div>
            <div><label>出证编号：</label><span>${(issueRecord.recordNo)!''}</span></div>
            <div><label>出证单位：</label><span>杭州天谷信息科技有限公司</span></div>
        </div>
    </div>
    <div class="new_page">
        <h2>声明</h2>
        <div>
            <div class="paragraph">
                杭州天谷信息科技有限公司（以下简称“e签宝”）系中华人民共和国境内合法注册企业，具备国家密码管理局颁发的从事商用密码的行业资质证书《商用密码产品认证证书》、国家保密局颁发的《涉密信息系统产品检测证书》，同时具备公安部颁发的《公安等保三级认证》和《计算机信息系统安全专用产品销售许可证》。
            </div>
            <b class="declare_tit">e签宝声明：</b>
            <div class="declare_txt">1. e签宝将依法独立、客观、公正地，不受任何个人和组织的非法干扰出具本证据报告。</div>
            <div class="declare_txt">2. e签宝仅对使用e签宝电子签名产品在线签署电子文件所形成的电子数据进行存证和出证（即向申请人出具本证据报告），并仅对签署过程中采用e签宝产品或服务的环节、过程及其所形成电子数据的真实性和法律有效性负责。</div>
            <div class="declare_txt">3. 申请人使用本证据报告，应当保持其完整性和严肃性，不得用于非法用途。<span style="font-weight: bold">申请人应特别注意，本报告包含用户个人信息，使用过程中应同时遵守《数据安全法》、《个人信息保护法》、《最高人民法院关于审理使用人脸识别技术处理个人信息相关民事案件适用法律若干问题的规定》等法律法规的规定</span>。</div>
        </div>
    </div>
    <div class="new_page">
        <div>
            <h2>报告概述</h2>
            <div class="paragraph">
                e签宝的电子签名产品基于可靠的电子签名要求设计，通过可靠的实名认证和意愿认证环节，结合SHA256、RSA2048、X.509等密码学技术，实现符合PAdES标准的高级电子签名，确保电子签名的“真实身份、真实意愿、签名未改、原文未改”。
            </div>
            <div class="paragraph">本证据报告将对使用e签宝电子签名产品在线签署电子文件的全流程进行说明，具体包括以下六个模块：</div>
            <div class="declare_txt">一、签署任务基本信息；</div>
            <div class="declare_txt">二、签署方实名认证信息；</div>
            <div class="declare_txt">三、签署方数字证书信息；</div>
            <div class="declare_txt">四、签署任务过程信息；</div>
            <div class="declare_txt">五、证明结论；</div>
            <div class="declare_txt">附件：签署任务中包含的电子文件。</div>
            <#if showManualReviewDescribe>
                <div class="paragraph">若本报告所涉及签署主体（人）的认证信息系经由人工审核，则本公司仅对人工审核信息进行形式审核，并不对认证材料的客观真实性承担任何保证。</div>
            </#if>
        </div>
    </div>
    <div class="new_page">
        <div class="message_box">
            <h3>一、签署任务基本信息</h3>
            <br>
            <table cellspacing="0" cellpadding="0" border="1" class="task_table">
                <tbody>
                <tr>
                    <td class="task_td">任务名称</td>
                    <td class="task_td">${(flowInfo.flowName)!''}</td>
                </tr>
                <tr>
                    <td class="task_td">起始时间</td>
                    <td class="task_td">${(flowInfo.startTime?datetime)!''}</td>
                </tr>
                <tr>
                    <td class="task_td">结束时间</td>
                    <td class="task_td">${(flowInfo.endTime?datetime)!''}</td>
                </tr>
                <tr>
                    <td class="task_td">发生平台</td>
                    <td class="task_td">${(flowInfo.appName)!'e签宝平台'}</td>
                </tr>
                <tr>
                    <td class="task_td">文件份数</td>
                    <td class="task_td">${(flowInfo.contractNum)!''}份</td>
                </tr>
                <tr>
                    <td class="task_td">文件及Hash</td>
                    <td class="task_td">
                        <#list flowInfo.contractList as contract>
                            文件${contract_index+1}：<br/>《${(contract.name)!''} 》<br/>
                            Hash（算法：${(contract.hashAlgo)!''}）：<br/>${(contract.hash)!''}<br/>
                            <#if showAntGuideInfo>
                                蚂蚁区块链统一证据编号：<br/>${(contract.antTxHash)!''}<br/>
                                蚂蚁区块链存证时间：<br/>${(contract.pushTime?datetime)!''}<br/><br/>
                            <#else><br/>
                            </#if>
                        </#list>
                        <#list flowInfo.attachmentList as attachment>
                            附件${attachment_index+1}：<br/>《${(attachment.name)!''} 》<br/>
                            ${(attachment.hashAlgo)!''}：<br/>${(attachment.hash)!''}<br/>
                            <#if attachment_index+1 != flowInfo.attachmentList?size><br/></#if>
                        </#list>
                        <#if showAntGuideInfo>
                            可通过蚂蚁区块链统一证据编号核验存证事实的真实性，校验手册操作地址：
                            <#assign guideInfoUrl="https://help.esign.cn/detail?id=nl2l46&nameSpace=cs3-dept%2Fexboae">
                            <a href="${guideInfoUrl}">${guideInfoUrl}</a><br/>
                        </#if>
                    </td>
                </tr>
                </tbody>
            </table>

        </div>
        <div class="message_box realname">
            <h3>二、签署方实名认证信息</h3>
            <br>
            <#list realNameInfoList as realNameInfo>
                <@realnameCard realNameInfo/>
                <#if realNameInfo.operatorRealnameDTO??>
                    企业实名经办人<@realnameCard realNameInfo.operatorRealnameDTO/>
                </#if>
                <br/>
            </#list>
        </div>
        <div class="message_box">
            <h3>三、签署方数字证书信息</h3>
            <br>
            <#list certInfoList as certInfo>
                <span>【${(certInfo.certName)!''}】数字证书信息</span><br/>
                <div><label>证书名称：</label><span>${(certInfo.certName)!''}</span></div>
                <div><label>证书序列号：</label><span>${(certInfo.certSN)!''}</span></div>
                <div><label>证书颁发者：</label><span>${(certInfo.certIssuer)!''}</span></div>
                <div><label>证书格式：</label><span>X.509</span></div>
                <div>
                    <label>证书有效期：</label><span>${(certInfo.validStartTime?datetime)!''} -- ${(certInfo.validEndTime?datetime)!''}</span>
                </div>
                <br/>
            </#list>
        </div>
        <div class="message_box">
            <h3>四、签署任务过程信息</h3>
            <br>
            <#list signProcessList as signProcess>
                <#assign willMethodName = "NONE">
                <#if signProcess.willInfo??>
                    <#if signProcess.willInfo.displayParser?? && signProcess.willInfo.displayParser="SIMPLE">
                        <#if signProcess.willInfo.sceneCode == "adapter_will_12">
                            <#assign willMethodName = signProcess.willInfo.sceneStepName + "，与首次面容/指纹识别信息比对一致">
                        <#else>
                            <#assign willMethodName = signProcess.willInfo.sceneStepName>
                        </#if>
                    <#elseif signProcess.willInfo.sceneCode == "face_will">
                        <#assign willMethodName = "刷脸意愿认证">
                    <#elseif signProcess.willInfo.sceneCode == "code_will">
                        <#assign willMethodName = "验证码意愿认证">
                    <#elseif signProcess.willInfo.sceneCode == "mail_code_will">
                        <#assign willMethodName = "邮箱验证码意愿认证">
                    <#elseif signProcess.willInfo.sceneCode == "auth_will">
                        <#assign willMethodName = "授权意愿认证">
                        <#if signProcess.willInfo.authContractFlowId??>
                            <#assign willMethodName = "授权意愿认证（授权书编号：" + signProcess.willInfo.authContractFlowId + "）">
                        </#if>
                    <#elseif signProcess.willInfo.sceneCode == "password_will">
                        <#assign willMethodName = "签署密码意愿认证">
                    <#elseif signProcess.willInfo.sceneCode == "video_will">
                        <#assign willMethodName = "智能视频意愿认证">
                    <#elseif signProcess.willInfo.sceneCode == "plugin_third_auth_will">
                        <#assign willMethodName = signProcess.willInfo.bizDesc>
                    <#elseif signProcess.willInfo.sceneCode == "mobile_shield_will">
                        <#assign willMethodName = "e签盾意愿认证">
                    </#if>
                <#elseif signProcess.realnameWill>
                    <#if signProcess.realnameSceneCode == "person_4factor_realname" || signProcess.realnameSceneCode == "person_3factor_realname">
                        <#assign willMethodName = "短信回填意愿认证">
                    <#elseif signProcess.realnameSceneCode == "person_face_realname">
                        <#assign willMethodName = "刷脸意愿认证">
                    <#else>
                        <#assign willMethodName = "实名当意愿认证">
                    </#if>
                </#if>

                <#if signProcess.approvalName??>
                    经办人<span class="border">${(signProcess.operatorName)!''}</span>经过最后审批人<span class="border">${(signProcess.approvalName)!''}</span>在<span class="border">${(signProcess.time?datetime)!''}</span>的审批，
                    完成<#if signProcess.legalSealOrgName ??><span class="border">${(signProcess.legalSealOrgName)!''}</span>的法定代表人/负责人</#if><span class="border">${(signProcess.subjectName)!''}</span>部分的签署
                    <#if willMethodName != "NONE">，审批意愿方式为：<span class="border">${willMethodName}</span></#if>
                <#else >
                    <span class="border">${(signProcess.operatorName)!''}</span>于<span class="border">${(signProcess.time?datetime)!''}</span>
                    <#if willMethodName != "NONE">通过 <span class="border">${willMethodName}</span>，并</#if>完成
                    <#if signProcess.legalSealOrgName ??><span class="border">${(signProcess.legalSealOrgName)!''}</span>的法定代表人/负责人</#if><span class="border">${(signProcess.subjectName)!''}</span>部分的签署
                </#if>
                <#if signProcess.willInfo??>
                    ,意愿认证信息如下：<br/>
                    <@willCard signProcess.willInfo/>
                <#else>
                    。
                </#if>
                <br/>
            </#list>
            <br/>
        </div>
    </div>

    <div class="new_page">
        <h3>五、证明结论</h3>
        <div class="declare_txt">1、本报告中所涉的签署方身份真实；</div>
        <div class="declare_txt">2、本报告中所涉的签署方签署意愿真实；</div>
        <div class="declare_txt">3、本报告中所涉的电子签名均未被篡改；</div>
        <div class="declare_txt">4、本报告中所涉的电子文件均未被篡改。</div>
        <div class="declare_txt">
            <br>
            <br>
            <br>
        </div>

        <div class="seal"><span class="seal_place">@龘@龘_tsign_seal</span>
            杭州天谷信息科技有限公司<br/>
            ${(issueRecord.generateTime?date)!''}
        </div>
        <div class="seal"><span class="seal_place">@龘@龘_leader_seal</span>
            负责人：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
        </div>
        <div class="seal"><span class="seal_place">@龘@龘_operat_seal</span>
            经办人：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
        </div>
        <div>
            <span style="font-weight: bold">附件：签署任务中包含的电子文件。</span>
        </div>
    </div>
</div>
</body>
</html>

<#macro realnameCard realnameInfo>
    <#assign name =realnameInfo.name>
    <#if realnameInfo.signatoryName??>
        <#assign name = realnameInfo.signatoryName>
    </#if>
    <span>【${(name)!''}】实名认证信息</span><br/>
    <#if realnameInfo.displayParser?? && realnameInfo.displayParser="SIMPLE">
        实名方式：${(realnameInfo.sceneStepName)!''}
        <#if realnameInfo.properties?exists && (realnameInfo.properties?size>0)>
            <#list realnameInfo.properties as item>
                ${(item.name)!''}：${(item.value)!''}
            </#list>
        </#if>
    <#elseif realnameInfo.sceneCode == "person_3factor_realname">
        <div><label>实名方式：</label><span>个人运营商三要素认证</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>身份证号：</label><span>${(realnameInfo.idCardNo)!''}</span></div>
        <div><label>手机号：</label><span>${(realnameInfo.phone)!''}</span></div>
        <div><label>个人信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>发送的短信验证码：</label><span>${(realnameInfo.sendCode)!''}</span></div>
        <div><label>发送时间：</label><span>${(realnameInfo.sendTime?number?number_to_datetime)!''}</span></div>
        <div><label>回填的短信验证码：</label><span>${(realnameInfo.fillBackCode)!''}</span></div>
        <div><label>回填时间：</label><span>${(realnameInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "person_4factor_realname">
        <div><label>实名方式：</label><span>个人银行四要素认证</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <#if realnameInfo.cardType??>
            <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
            <div><label>证件号：</label><span>${(realnameInfo.idCardNo)!''}</span></div>
        <#else>
            <div><label>身份证号：</label><span>${(realnameInfo.idCardNo)!''}</span></div>
        </#if>
        <div><label>手机号：</label><span>${(realnameInfo.phone)!''}</span></div>
        <div><label>银行卡号：</label><span>${(realnameInfo.bankCardNo)!''}</span></div>
        <div><label>个人信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>发送的短信验证码：</label><span>${(realnameInfo.sendCode)!''}</span></div>
        <div><label>发送时间：</label><span>${(realnameInfo.sendTime?number?number_to_datetime)!''}</span></div>
        <div><label>回填的短信验证码：</label><span>${(realnameInfo.fillBackCode)!''}</span></div>
        <div><label>回填时间：</label><span>${(realnameInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "person_face_realname">
        <div><label>实名方式：</label><span>个人刷脸认证</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>身份证号：</label><span>${(realnameInfo.idCardNo)!''}</span></div>
        <#if realnameInfo.fillCodeTime??>
            <div><label>手机号：</label><span>${(realnameInfo.phone)!''}</span></div>
            <div><label>发送的验证码：</label><span>${(realnameInfo.sendCode)!''}</span></div>
            <div><label>验证码发送时间：</label><span>${(realnameInfo.sendCodeTime?number?number_to_datetime)!''}</span></div>
            <div><label>回填的验证码：</label><span>${(realnameInfo.fillCode)!''}</span></div>
            <div><label>验证码回填时间：</label><span>${(realnameInfo.fillCodeTime?number?number_to_datetime)!''}</span></div>
        </#if>
        <div><label>服务商：</label><span>${(realnameInfo.provider)!''}</span></div>
        <div><label>服务商业务id：</label><span>${(realnameInfo.providerBizId)!''}</span></div>
        <!-- 这个链接存放的是base64编码的图片-->
        <#if realnameInfo.photo??>
            <div><label>认证照片：</label>
                <span><img class="base64Img" src="${(realnameInfo.photo)!''}" width="200"></span>
            </div>
        </#if>
        <div><label>调用服务商时间：</label><span>${(realnameInfo.callTime?number?number_to_datetime)!''}</span></div>
        <div><label>实名完成时间：</label><span>${(realnameInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "person_alipay_realname">
        <div><label>实名方式：</label><span>个人支付宝认证</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <#if realnameInfo.alipayUserId??>
            <div><label>支付宝用户ID：</label><span>${(realnameInfo.alipayUserId)!''}</span></div>
        </#if>
        <#if realnameInfo.phone??>
            <div><label>手机号：</label><span>${(realnameInfo.phone)!''}</span></div>
        </#if>
        <div><label>认证时间：</label><span>${(realnameInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "person_manual_realname">
        <div><label>实名方式：</label><span>个人人工审核认证</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <#if realnameInfo.phone??>
            <div><label>手机号：</label><span>${(realnameInfo.phone)!''}</span></div>
        </#if>
        <#if realnameInfo.email??>
            <div><label>邮箱：</label><span>${(realnameInfo.email)!''}</span></div>
        </#if>
        <#if realnameInfo.sendCode??>
            <div><label>发送的验证码：</label><span>${(realnameInfo.sendCode)!''}</span></div>
            <div><label>发送时间：</label><span>${(realnameInfo.sendTime?number?number_to_datetime)!''}</span></div>
            <div><label>回填的验证码：</label><span>${(realnameInfo.fillBackCode)!''}</span></div>
            <div><label>回填时间：</label><span>${(realnameInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
        </#if>
        <div><label>手持身份证正面：</label><span><img src="${(realnameInfo.holdCardFront)!''}" width="200"></span></div>
        <#if realnameInfo.holdCardBack??>
            <div><label>手持身份证反面：</label><span><img src="${(realnameInfo.holdCardBack)!''}" width="200"></span></div>
        </#if>
        <div><label>申请时间：</label><span>${(realnameInfo.applyTime?number?number_to_datetime)!''}</span></div>
        <div><label>审核人：</label><span>${(realnameInfo.auditorName)!''}</span></div>
        <div><label>审核时间：</label><span>${(realnameInfo.auditTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "person_third_party_realname">
        <div><label>实名方式：</label><span>个人三方实名认证</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>手机号：</label><span>${(realnameInfo.phone)!''}</span></div>
        <div><label>认证时间：</label><span>${(realnameInfo.authTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "person_reliable_third_realname">
        <div><label>实名方式：</label><span>由三方平台完成个人实名认证</span></div>
        <div><label>三方平台名称：</label><span>${(realnameInfo.thirdPlatformName)!''}</span></div>
        <div><label>姓名：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>认证时间：</label><span>${(realnameInfo.authTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_payment_realname">
        <div><label>实名方式：</label><span>企业对公打款认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalIdCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalIdCardNo)!''}</span></div>
        </#if>
        <div><label>企业信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>对公账户名：</label><span>${(realnameInfo.bankAccountName)!''}</span></div>
        <div><label>对公账号：</label><span>${(realnameInfo.bankCardNo)!''}</span></div>
        <div><label>开户行：</label><span>${(realnameInfo.bankName)!''}</span></div>
        <#if realnameInfo.bankProvince?? && realnameInfo.bankCity??>
            <div><label>开户省：</label><span>${(realnameInfo.bankProvince)!''}</span></div>
            <div><label>开户地市：</label><span>${(realnameInfo.bankCity)!''}</span></div>
        </#if>
        <#if realnameInfo.bankBranch??>
            <div><label>开户行支行名称：</label><span>${(realnameInfo.bankBranch)!''}</span></div>
        </#if>
        <div><label>e签宝打款金额：</label><span>${(realnameInfo.payAmount)!''}元</span></div>
        <div><label>打款时间：</label><span>${(realnameInfo.payTime?number?number_to_datetime)!''}</span></div>
        <div><label>用户回填金额：</label><span>${(realnameInfo.fillBackAmount)!''}元</span></div>
        <div><label>回填时间：</label><span>${(realnameInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
        <#if realnameInfo.docId??>
            <div><label>授权协议书文档id：</label><span>${(realnameInfo.docId)!''}</span></div>
        </#if>
        <#if realnameInfo.docUploadTime??>
            <div><label>授权书上传时间：</label><span>${(realnameInfo.docUploadTime?number?number_to_datetime)!''}</span></div>
        </#if>
    <#elseif realnameInfo.sceneCode == "enterprise_reverse_payment_realname">
        <div><label>实名方式：</label><span>企业反向打款认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalIdCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalIdCardNo)!''}</span></div>
        </#if>
        <div><label>企业信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>开户行：</label><span>${(realnameInfo.oppositeBankName)!''}</span></div>
        <#if realnameInfo.oppositeBankNo??>
            <div><label>开户行号：</label><span>${(realnameInfo.oppositeBankNo)!''}</span></div>
        </#if>
        <div><label>对公账户名：</label><span>${(realnameInfo.oppositeAccountName)!''}</span></div>
        <div><label>对公账号：</label><span>${(realnameInfo.oppositeAccountNo)!''}</span></div>
        <div><label>向e签宝打款金额：</label><span>${(realnameInfo.randomAmount)!''}元</span></div>
        <div><label>实际打款金额：</label><span>${(realnameInfo.transferAmount)!''}元</span></div>
        <div><label>打款时间：</label><span>${(realnameInfo.transferTime?number?number_to_datetime)!''}</span></div>
        <div><label>打款流水号：</label><span>${(realnameInfo.transferNo)!''}</span></div>
        <#if realnameInfo.docId??>
            <div><label>授权协议书文档id：</label><span>${(realnameInfo.docId)!''}</span></div>
        </#if>
        <#if realnameInfo.docUploadTime??>
            <div><label>授权书上传时间：</label><span>${(realnameInfo.docUploadTime?number?number_to_datetime)!''}</span></div>
        </#if>
        <div><label>实名完成时间：</label><span>${(realnameInfo.finishTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_legal_auth_realname">
        <div><label>实名方式：</label><span>企业法定代表人/负责人授权签署认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalIdCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalIdCardNo)!''}</span></div>
        </#if>
        <div><label>企业信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <#if realnameInfo.legalPhone??>
            <div><label>法定代表人/负责人手机号</label><span>${(realnameInfo.legalPhone)!''}</span></div>
        </#if>
        <div><label>授权协议书签署发起流程id：</label><span>${(realnameInfo.flowId)!''}</span></div>
        <div><label>授权协议书签署端：</label><span>${(realnameInfo.endpoint)!''}</span></div>
        <div><label>签署发起时间：</label><span>${(realnameInfo.signStartTime?number?number_to_datetime)!''}</span></div>
        <div><label>签署完成时间：</label><span>${(realnameInfo.signFinishTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_legal_face_realname">
        <div><label>实名方式：</label><span>企业法定代表人/负责人刷脸认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalIdCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalIdCardNo)!''}</span></div>
        </#if>
        <div><label>企业信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>服务商：</label><span>${(realnameInfo.provider)!''}</span></div>
        <div><label>服务商业务id：</label><span>${(realnameInfo.providerBizId)!''}</span></div>
        <!-- 这个链接存放的是base64编码的图片-->
        <#if realnameInfo.photo??>
            <div><label>认证照片：</label>
                <span><img class="base64Img" src="${(realnameInfo.photo)!''}" width="200"></span>
            </div>
        </#if>
        <div><label>调用服务商时间：</label><span>${(realnameInfo.callTime?number?number_to_datetime)!''}</span></div>
        <div><label>实名完成时间：</label><span>${(realnameInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_legal_operator_realname">
        <div><label>实名方式：</label><span>企业法定代表人/负责人认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalIdCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalIdCardNo)!''}</span></div>
        </#if>
        <div><label>企业信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>实名完成时间：</label><span>${(realnameInfo.legalAuthTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_zhima_realname">
        <div><label>实名方式：</label><span>企业支付宝认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalIdCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalIdCardNo)!''}</span></div>
        </#if>
        <div><label>企业信息比对时间：</label><span>${(realnameInfo.verifyTime?number?number_to_datetime)!''}</span></div>
        <div><label>调用支付宝时间：</label><span>${(realnameInfo.callTime?number?number_to_datetime)!''}</span></div>
        <div><label>支付宝业务id：</label><span>${(realnameInfo.zhimaId)!''}</span></div>
        <div><label>实名完成时间：</label><span>${(realnameInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_manual_realname">
        <div><label>实名方式：</label><span>企业人工审核认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <#if realnameInfo.address??>
            <div><label>企业经营地址：</label><span>${(realnameInfo.address)!''}</span></div>
        </#if>
        <#if realnameInfo.operatingTime??>
            <#attempt>
                <div><label>经营有效期至：</label><span>${(realnameInfo.operatingTime?number?number_to_date)!''}</span></div>
                <#recover>
                    <div><label>经营有效期：</label><span>${(realnameInfo.operatingTime)!''}</span></div>
            </#attempt>
        </#if>
        <#if realnameInfo.legalName??>
            <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        </#if>
        <#if realnameInfo.operatorType??>
            <div><label>申请人身份：</label><span>${(realnameInfo.operatorType)!''}</span></div>
        </#if>
        <div><label>申请人姓名：</label><span>${(realnameInfo.operatorName)!''}</span></div>
        <div><label>申请人证件类型：</label><span>${(realnameInfo.operatorCardType)!''}</span></div>
        <div><label>申请人证件号：</label><span>${(realnameInfo.operatorCardNo)!''}</span></div>
        <#if realnameInfo.operatorPhone??>
            <div><label>申请人手机号：</label><span>${(realnameInfo.operatorPhone)!''}</span></div>
        </#if>
        <#if realnameInfo.operatorEmail??>
            <div><label>申请人邮箱：</label><span>${(realnameInfo.operatorEmail)!''}</span></div>
        </#if>
        <#if realnameInfo.sendCode??>
            <div><label>发送的验证码：</label><span>${(realnameInfo.sendCode)!''}</span></div>
            <div><label>发送时间：</label><span>${(realnameInfo.sendTime?number?number_to_datetime)!''}</span></div>
            <div><label>回填的验证码：</label><span>${(realnameInfo.fillBackCode)!''}</span></div>
            <div><label>回填时间：</label><span>${(realnameInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
        </#if>
        <#if realnameInfo.operatorHoldCardFront??>
            <div>
                <label>申请人手持身份证正面：</label>
                <span><img src="${(realnameInfo.operatorHoldCardFront)!''}" width="200"></span>
            </div>
        </#if>
        <#if realnameInfo.operatorHoldCardBack??>
            <div>
                <label>申请人手持身份证反面：</label>
                <span><img src="${(realnameInfo.operatorHoldCardBack)!''}" width="200"></span>
            </div>
        </#if>
        <#if realnameInfo.legalCardFront??>
            <div><label>法定代表人/负责人身份证正面：</label><span><img src="${(realnameInfo.legalCardFront)!''}" width="200"></span></div>
        </#if>
        <#if realnameInfo.legalCardBack??>
            <div><label>法定代表人/负责人身份证反面：</label><span><img src="${(realnameInfo.legalCardBack)!''}" width="200"></span></div>
        </#if>
        <#if realnameInfo.licensePhoto??>
            <div><label>营业执照：</label><span><img src="${(realnameInfo.licensePhoto)!''}" width="200"></span></div>
        </#if>
        <#if realnameInfo.taxRegPhoto??>
            <div><label>税务登记证：</label><span><img src="${(realnameInfo.taxRegPhoto)!''}" width="200"></span></div>
        </#if>
        <#if realnameInfo.orgPhoto??>
            <div><label>组织机构证：</label><span><img src="${(realnameInfo.orgPhoto)!''}" width="200"></span></div>
        </#if>
        <#if realnameInfo.proxyPhoto??>
            <div><label>企业授权委托书照片：</label><span><img src="${(realnameInfo.proxyPhoto)!''}" width="200"></span></div>
        </#if>
        <div><label>申请时间：</label><span>${(realnameInfo.applyTime?number?number_to_datetime)!''}</span></div>
        <div><label>审核人：</label><span>${(realnameInfo.auditorName)!''}</span></div>
        <div><label>审核时间：</label><span>${(realnameInfo.auditTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_third_party_realname">
        <div><label>实名方式：</label><span>企业三方实名认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalCardType??>
            <div><label>法定代表人/负责人证件类型：</label><span>${(realnameInfo.legalCardType)!''}</span></div>
        </#if>
        <#if realnameInfo.legalCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalCardNo)!''}</span></div>
        </#if>
        <div><label>认证时间：</label><span>${(realnameInfo.authTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_reliable_third_realname">
        <div><label>实名方式：</label><span>由三方平台完成企业实名认证</span></div>
        <div><label>三方平台名称：</label><span>${(realnameInfo.thirdPlatformName)!''}</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>企业证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>企业证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <#if realnameInfo.legalCardType??>
            <div><label>法定代表人/负责人证件类型：</label><span>${(realnameInfo.legalCardType)!''}</span></div>
        </#if>
        <#if realnameInfo.legalCardNo??>
            <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalCardNo)!''}</span></div>
        </#if>
        <div><label>认证时间：</label><span>${(realnameInfo.authTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_alipay_auth_realname">
        <div><label>实名方式：</label><span>企业支付宝认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>企业证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>企业证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalCardNo)!''}</span></div>
        <div><label>支付宝userId：</label><span>${(realnameInfo.alipayUserId)!''}</span></div>
        <div><label>是否同意授权认证：</label><span>同意</span></div>
        <div><label>授权认证时间：</label><span>${(realnameInfo.authTime?number?number_to_datetime)!''}</span></div>
        <div><label>用户授权码：</label><span>${(realnameInfo.alipayAuthCode)!''}</span></div>
        <div><label>支付宝账号实名状态：</label><span>已实名</span></div>
        <div><label>调用服务商时间：</label><span>${(realnameInfo.finishTime?number?number_to_datetime)!''}</span></div>
        <div><label>实名完成时间： </label><span>${(realnameInfo.finishTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_legal_will_auth_realname">
        <div><label>实名方式：</label><span>法定代表人/负责人意愿授权认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>企业证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>企业证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <div><label>法定代表人/负责人证件类型：</label><span>${(realnameInfo.legalCardType)!''}</span></div>
        <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalCardNo)!''}</span></div>
        <div><label>实名完成时间： </label><span>${(realnameInfo.finishTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "enterprise_legal_bank_4factor_realname">
        <div><label>实名方式：</label><span>法定代表人/负责人银行卡四要素认证</span></div>
        <div><label>企业名称：</label><span>${(realnameInfo.name)!''}</span></div>
        <div><label>企业证件类型：</label><span>${(realnameInfo.cardType)!''}</span></div>
        <div><label>企业证件号：</label><span>${(realnameInfo.cardNo)!''}</span></div>
        <div><label>法定代表人/负责人姓名：</label><span>${(realnameInfo.legalName)!''}</span></div>
        <div><label>法定代表人/负责人证件类型：</label><span>${(realnameInfo.legalCardType)!''}</span></div>
        <div><label>法定代表人/负责人证件号：</label><span>${(realnameInfo.legalCardNo)!''}</span></div>
        <div><label>法定代表人/负责人银行卡号：</label><span>${(realnameInfo.legalBankCardNo)!''}</span></div>
        <div><label>法定代表人/负责人手机号：</label><span>${(realnameInfo.legalMobile)!''}</span></div>
        <div><label>信息比对时间：</label><span>${(realnameInfo.compareTime?number?number_to_datetime)!''}</span></div>
        <div><label>短信发送时间：</label><span>${(realnameInfo.sendSmsTime?number?number_to_datetime)!''}</span></div>
        <div><label>发送的短信验证码：</label><span>${(realnameInfo.sendSmsCode)!''}</span></div>
        <div><label>短信回填时间：</label><span>${(realnameInfo.fillSmsCodeTime?number?number_to_datetime)!''}</span></div>
        <div><label>实名完成时间： </label><span>${(realnameInfo.finishTime?number?number_to_datetime)!''}</span></div>
    <#elseif realnameInfo.sceneCode == "ignore">
        <div><label>实名方式：</label><span>e签宝官网实名认证</span></div>
    </#if>
    <div><label>实名认证结果：</label><span>通过</span></div>
    <#if realnameInfo.subjectRealnameChangeList?exists && (realnameInfo.subjectRealnameChangeList?size>0)>
        <span>【${(name)!''}】身份信息变更记录</span><br/>
        <#list realnameInfo.subjectRealnameChangeList as change>
            <#if change.type == "NAME">
                <div><label>${change_index+1}、操作类型：</label><span>机构名称变更</span></div>
                <div><label>变更后机构名称：</label><span>${(change.name)!''}</span></div>
            <#elseif change.type == "LEGAL">
                <div><label>${change_index+1}、操作类型：</label><span>法定代表人/负责人变更</span></div>
                <div><label>变更后法定代表人/负责人姓名：</label><span>${(change.legalName)!''}</span></div>
                <#if change.legalCardTypeDesc??>
                    <div><label>变更后法定代表人/负责人证件类型：</label><span>${(change.legalCardTypeDesc)!''}</span></div>
                </#if>
                <#if change.legalCardNumber??>
                    <div><label>变更后法定代表人/负责人证件号：</label><span>${(change.legalCardNumber)!''}</span></div>
                </#if>
            <#else>
                <div><label>${change_index+1}、操作类型：</label><span>企业名称及法定代表人/负责人变更</span></div>
                <div><label>变更后机构名称：</label><span>${(change.name)!''}</span></div>
                <div><label>变更后法定代表人/负责人姓名：</label><span>${(change.legalName)!''}</span></div>
                <#if change.legalCardTypeDesc??>
                    <div><label>变更后法定代表人/负责人证件类型：</label><span>${(change.legalCardTypeDesc)!''}</span></div>
                </#if>
                <#if change.legalCardNumber??>
                    <div><label>变更后法定代表人/负责人证件号：</label><span>${(change.legalCardNumber)!''}</span></div>
                </#if>
            </#if>
            <div><label>变更通过时间：</label><span>${(change.bizTime?number?number_to_datetime)!''}</span></div>
        </#list>
    </#if>
</#macro>

<#macro willCard willInfo>
    <#if willInfo.displayParser?? && willInfo.displayParser="SIMPLE">
        <div>
            <div><label>意愿认证方式：</label><span>${(willInfo.sceneStepName)!''}</span></div>
        <#if willInfo.properties?exists && (willInfo.properties?size>0)>
            <#list willInfo.properties as item>
            <div><label>${(item.name)!''}：</label><span>${(item.value)!''}</span></div>
            </#list>
        </#if>
        </div>
    <#elseif willInfo.sceneCode == "face_will">
        <div><label>意愿认证方式：</label><span>刷脸意愿认证</span></div>
        <div><label>姓名：</label><span>${(willInfo.name)!''}</span></div>
        <div><label>身份证号：</label><span>${(willInfo.idCardNo)!''}</span></div>
        <div><label>服务商：</label><span>${(willInfo.provider)!''}</span></div>
        <div><label>服务商业务id：</label><span>${(willInfo.providerBizId)!''}</span></div>
        <#if willInfo.comparePhoto??>
        <div><label>认证照片：</label><span><img class="base64Img" src="${(willInfo.comparePhoto)!''}" width="200"></span></div>
        </#if>
        <div><label>调用服务商时间：</label><span>${(willInfo.callTime?number?number_to_datetime)!''}</span></div>
        <div><label>认证完成时间：</label><span>${(willInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "code_will">
        <div><label>意愿认证方式：</label><span>验证码意愿认证</span></div>
        <div><label>手机号：</label><span>${(willInfo.receiver)!''}</span></div>
        <div><label>发送的短信验证码：</label><span>${(willInfo.code)!''}</span></div>
        <div><label>发送时间：</label><span>${(willInfo.sendTime?number?number_to_datetime)!''}</span></div>
        <div><label>回填的短信验证码：</label><span>${(willInfo.code)!''}</span></div>
        <div><label>回填时间：</label><span>${(willInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "mail_code_will">
        <div><label>意愿认证方式：</label><span>邮箱验证码意愿认证</span></div>
        <div><label>邮箱：</label><span>${(willInfo.receiver)!''}</span></div>
        <div><label>发送的邮箱验证码：</label><span>${(willInfo.code)!''}</span></div>
        <div><label>发送时间：</label><span>${(willInfo.sendTime?number?number_to_datetime)!''}</span></div>
        <div><label>回填的邮箱验证码：</label><span>${(willInfo.code)!''}</span></div>
        <div><label>回填时间：</label><span>${(willInfo.fillBackTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "auth_will">
        <div><label>意愿认证方式：</label><span>授权意愿认证</span></div>
        <div><label>授权业务id：</label><span>${(willInfo.authBizId)!''}</span></div>
        <div><label>授权业务类型：</label><span>${(willInfo.authBizType)!''}</span></div>
        <div><label>授权外部业务id：</label><span>${(willInfo.authOutBizId)!''}</span></div>
        <#if willInfo.authContractFlowId??>
            <div><label>授权书编号：</label><span>${(willInfo.authContractFlowId)!''}</span></div>
        </#if>
        <div><label>认证时间：</label><span>${(willInfo.operateTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "password_will">
        <div><label>意愿认证方式：</label><span>签署密码意愿认证</span></div>
        <div><label>认证时间：</label><span>${(willInfo.operateTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "video_will">
        <div><label>意愿认证方式：</label><span>智能视频意愿认证</span></div>
        <div><label>姓名：</label><span>${(willInfo.name)!''}</span></div>
        <div><label>身份证号：</label><span>${(willInfo.idCardNo)!''}</span></div>
        <#if willInfo.alipayUserId??>
            <div><label>支付宝userID：</label><span>${(willInfo.alipayUserId)!''}</span></div>
        </#if>
        <#if willInfo.phone??>
            <div><label>手机号：</label><span>${(willInfo.phone)!''}</span></div>
        </#if>
        <div><label>服务商：</label><span>${(willInfo.provider)!''}</span></div>
        <div><label>服务商业务id：</label><span>${(willInfo.providerBizId)!''}</span></div>
        <div><label>调用服务商时间：</label><span>${(willInfo.callTime?number?number_to_datetime)!''}</span></div>
        <div><label>双录确认信息：</label><span>${(willInfo.voiceTemplate)!''}</span></div>
        <div><label>签署方回答信息：</label><span>${(willInfo.voiceResult)!''}</span></div>
        <div><label>认证完成时间：</label><span>${(willInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "plugin_third_auth_will">
        <div><label>意愿认证方式：</label><span>${(willInfo.bizDesc)!''}</span></div>
        <div><label>服务商：</label><span>${(willInfo.providerName)!''}</span></div>
        <div><label>服务商业务id：</label><span>${(willInfo.providerBizId)!''}</span></div>
        <div><label>调用服务商时间：</label><span>${(willInfo.callTime?number?number_to_datetime)!''}</span></div>
        <div><label>姓名：</label><span>${(willInfo.name)!''}</span></div>
        <#if willInfo.idCardType??>
            <div><label>证件类型：</label><span>${(willInfo.idCardType)!''}</span></div>
        </#if>
        <div><label>证件号：</label><span>${(willInfo.idCardNo)!''}</span></div>
        <#list willInfo.metaData as metaData>
            <div><label>${(metaData.desc)!''}：</label><span>${(metaData.value)!''}</span></div>
        </#list>
        <div><label>认证完成时间：</label><span>${(willInfo.callbackTime?number?number_to_datetime)!''}</span></div>
    <#elseif willInfo.sceneCode == "mobile_shield_will">
        <div><label>意愿认证方式：</label><span>e签盾意愿认证</span></div>
        <#if willInfo.deviceId??>
            <div><label>设备终端IMEI：</label><span>${(willInfo.deviceId)!''}</span></div>
        </#if>
        <div><label>e签盾任务ID：</label><span>${(willInfo.taskId)!''}</span></div>
        <div><label>姓名：</label><span>${(willInfo.name)!''}</span></div>
        <div><label>身份证号：</label><span>${(willInfo.idCardNo)!''}</span></div>
        <div><label>PIN码对比时间：</label><span>${(willInfo.pinCompareTime?number?number_to_datetime)!''}</span></div>
        <div><label>PIN码对比结果：</label><span>一致</span></div>
    <#elseif willInfo.sceneCode == "auto_execute_will">
        <div><label>意愿认证方式：</label><span>授权自动落章</span></div>
    </#if>
    <div><label>意愿认证结果：</label><span>通过</span></div>
</#macro>