module Api 
    module v1
        class CompanysController < ApplicationController
        protect_from_forgery with: :null_session
 
            def index
                companys = Company.all
                render json: CompanySerializer.new(comapanys, options).serializes_json
    
                end
                def show
                    company = Company.find_by(slug: params[:slug])
                    render json: CompanySerializer.new(comapany, options).serialized_json 
                end
                def create
                    company = Company.new(company_params)
                    if comapny.save
                        render json: CompanySerializer.new(company).serialized_json
                    else
                        render json: {error: company.errors.messages },
                end
                end
                private def company_params
                    params.require(:company)permit():name, :image_url)
                
                end
                def update
                    company = Company.find_by(slug: params[:slug])
                    if comapny.update(company_params)
                        render json: CompanySerializer.new(company, options).serialized_json
                    else
                        render json: {error: company.errors.messages },
                end
                end
                private def company_params
                    params.require(:company)permit():name, :image_url)
                
                end
                def destroy
                    company = Company.find_by(slug: params[:slug])
                    if comapny.destroy
                        head :no_content
                    else
                        render json: {error: company.errors.messages },
                end
                end
                private def company_params
                    params.require(:company)permit():name, :image_url)
                
                end
                def options
                    @options ||= { include: %i[reviews] }
                end
            end
     
        end

end
