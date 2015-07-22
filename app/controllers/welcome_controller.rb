class WelcomeController < ApplicationController
  def index
    render plain: "Hello World"
  end

  def say_hi
    render plain:  "Hello #{params[:name]}, what is the meaning of life."
      # @greeting = "Hi"
      # # render plain: params.inspect
      # if @name == "Billy"
      #   @greeting = "Hello tatersalad"
      # else
      #   @greeting = "Hello there"
      # end
  end

  def lorem
    @times ="#{params[:times]}"
    @num = "#{params[:num]}"

      if @num == "standard"
        # @text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a gsalley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
        @text = Lipsum.standard
      elsif @num == "hipster"
        # @text = "Sustainable next level vinyl bicycle rights Carles cliche, Shoreditch health goth Helvetica aesthetic swag listicle kogi. Twee fap single-origin coffee street art. Wolf mixtape try-hard slow-carb, migas scenester Wes Anderson drinking vinegar authentic kitsch quinoa. Direct trade Williamsburg sriracha, selfies four loko drinking vinegar beard 3 wolf moon Banksy Blue Bottle leggings butcher wolf tote bag Shoreditch. Shabby chic butcher quinoa, slow-carb PBR narwhal cold-pressed banhs mi McSweeney's. Vinyl synth Echo Park wayfarers crucifix, asymmetrical bicycle rights Vice tofu +1 church-key. Four loko brunch occupy, pug swag before they sold out Echo Park keytar semiotics sustainable 8-bit."
        @text = Lipsum.hipster
      elsif @num == "roman"
        # @text = "Proin suscipit luctus orci placerat fringilla. Donec hendrerit laoreet risus eget adipiscing. Suspendisse in urna ligula, a volutpat mauris. Sed enim mi, bibendum eu pulvinar vel, sodales vitae dui. Pellentesque sed sapien lorem, at lacinia urna. In hac habitasse platea dictumst. Vivamus vel justo in leo laoreet ullamcorper non vitae lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin bibendum ullamcorper rutrum."
        @text = Lipsum.roman
      # elsif @num == "random"
      #   @text = Lipsum.random
      else
        @text = "But you didn't pick 1, 2, or 3 so I give you nothing.."
      end
      @output = []
       @times.to_i.times do @output << @text end




  end
end
