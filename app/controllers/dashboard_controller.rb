class DashboardController < ApplicationController
  def index
    @title = "People, Pets, and Meals | Dashboard"
    @users = User.all
  end

  def reports
  end

  def all_report
    respond_to do |format|
      format.csv do
        send_data User.to_csv, filename: 'users_report.csv', disposition: 'download'
      end
      format.html do
        render layout: false
        #did this because pdf wouldn't work with css to change it need to have them all going
        #to different paths
      end
      format.pdf do
        send_data PDFKit.new(all_report_url(format: 'html')), filename: 'all_report.pdf'
      end
    end
  end
end
