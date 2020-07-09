SELECT count(chatroom_id) AS 投稿数,chatroom_name from chatrooms cr left join chats c on cr.id=c.chatroom_id where cr.is_deleted=0 and c.is_deleted=0 group by cr.id ORDER BY `投稿数` DESC
