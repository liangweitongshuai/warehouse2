package edu.njfu.sas.util;

public class PageUtil {
    private int currentPage;
    private long totalREcords;
    private int pageSize;
    private int maxPage;

    public PageUtil(long totalREcords, int pageSize, int currentPage) {
        this.currentPage = currentPage;
        this.totalREcords = totalREcords;
        this.pageSize = pageSize;
        this.maxPage = (int) (totalREcords % pageSize == 0 ? totalREcords / pageSize : (totalREcords / pageSize + 1));
        this.currentPage = 1;
    }

    //判断是否是第一页；
    public boolean isFirstPage() {
        return currentPage == 1;
    }

    //判断是否为后一页
    public boolean isMaxPage() {
        return currentPage == maxPage;
    }

    //获取下一页
    public int nextPage() {
        return currentPage == maxPage ? maxPage : ++currentPage;
    }

    //获取上一页
    public int prevPage() {
        return currentPage == 1 ? 1 : --currentPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        if(currentPage>maxPage){
            this.currentPage=maxPage;
        }
        if(currentPage<1){
            this.currentPage=1;
        }
        this.currentPage = currentPage;
    }

    public long getTotalREcords() {
        return totalREcords;
    }

    public void setTotalREcords(long totalREcords) {
        this.totalREcords = totalREcords;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getMaxPage() {
        return maxPage;
    }

    public void setMaxPage(int maxPage) {
        this.maxPage = maxPage;
    }

    public static void main(String[] args) {
        PageUtil pageUtil = new PageUtil(37, 5, 1);
        System.out.println(pageUtil.nextPage());
        System.out.println(pageUtil.nextPage());

    }
}
