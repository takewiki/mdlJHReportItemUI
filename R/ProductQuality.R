#' 产品质量生成生成器界面
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
#' ProductQualityUI()
ProductQualityUI <- function(tabTitle ='产品质量基础表',
                         colTitles =c('操作区域','操作区域','显示区域'),
                         widthRates =c(6,6,12),
                         func_left = ProductQualityUI_left,
                         func_right =ProductQualityUI_right,
                         func_bottom = ProductQualityUI_bottom
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
#' ProductQualityUI_left()
ProductQualityUI_left <- function() {


  res <- tagList(
    tsui::uiTemplate(templateName = '产品质量基础表'),

    tsui::mdl_file(id ='text_flie_ProductQuality' ,label ='上传产品质量基础表' )


  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' ProductQualityUI_bottom()
ProductQualityUI_right <- function() {
  res <- tagList(


    shiny::actionButton(inputId = 'btn_ProductQuality_Up',label = '上传产品质量基础表'),

    shiny::actionButton(inputId = 'btn_ProductQuality_select',label = '查询'),

    tsui::mdl_download_button(id = 'dl_ProductQuality',label = '下载产品质量基础表至EXCEL')



  )
  return(res)

}


#' 生成区域
#'
#' @return 返回值
#' @export
#'
#' @examples
#' ProductQualityUI_bottom()
ProductQualityUI_bottom <- function() {
  res <- tagList(
    tsui::uiScrollX(tsui::mdl_dataTable(id = 'ProductQuality_resultView',label ='结果显示' ))

  )
  return(res)

}
