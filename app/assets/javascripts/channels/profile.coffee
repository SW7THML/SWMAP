App.connect = (profileId) ->
  App.profile = App.cable.subscriptions.create {channel: "ProfileChannel", profile_id: profileId},
    connected: ->
      console.log "connected"

    disconnected: ->
      console.log "disconnected"

    received: (data) ->
      console.log data
      @append(data)

    append: (data) ->
      html = @createHtml(data)
      $('.comments').append(html)

    createHtml: (data) ->
      """
      <div class="panel panel-default">
        <div class="panel-heading"><i class="fa fa-user"></i> #{data['commenter']}<span style="float: right">#{jQuery.timeago(data['created_at'])}</span></div>
        <div class="panel-body">
          #{data['body']}
        </div>
      </div>
      """
