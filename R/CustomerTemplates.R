#' 客户对应模板成生成器界面
#'
#' @param colTitles  主页标题
#' @param widthRates 左右比例
#' @param func_left 左函数
#' @param func_right 右函数
#' @param tabTitle 标题
#' @param func_bottom  下面一栏
#'
#' @return 返回值
#' @import tsui
#' @export
#'
#' @examples
#' CustomerTemplatesUI()
CustomerTemplatesUI <- function(tabTitle ='客户对应模板表',
                                             colTitles =c('操作区域','操作区域','显示区域'),
                                             widthRates =c(6,6,12),
                                             func_left = CustomerTemplatesUI_left,
                                             func_right =CustomerTemplatesUI_right,
                                             func_bottom = CustomerTemplatesUI_bottom
) {

  #三栏式设置，可以复制
  res = tsui::uiGen3(tabTitle = tabTitle,colTitles =colTitles,widthRates = widthRates,func_left = func_left,func_right = func_right,func_bottom = func_bottom )
  return(res)

}





#' 请输入文件
#'
#' @return 返回值
#' @export
#'
#' @examples
#' CustomerTemplatesUI_left()
CustomerTemplatesUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = '客户对应模板表'),

    tsui::mdl_file(id ='text_flie_CustomerTemplates' ,label ='上传客户对应模板表' )


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' CustomerTemplatesUI_bottom()
CustomerTemplatesUI_right <- function() {
  res <- tagList(


    shiny::actionButton(inputId = 'btn_CustomerTemplates_Up',label = '上传客户对应模板表'),

    shiny::actionButton(inputId = 'btn_CustomerTemplates_select',label = '查询'),

    tsui::mdl_download_button(id = 'dl_CustomerTemplates',label = '下载客户对应模板表至EXCEL')



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' CustomerTemplatesUI_bottom()
CustomerTemplatesUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'CustomerTemplates_resultView',label ='结果显示' ))

  )
  return(res)

}
