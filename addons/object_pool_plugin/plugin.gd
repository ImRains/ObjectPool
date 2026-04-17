@tool
extends EditorPlugin

func _enter_tree() -> void:
	# 注册自定义节点：节点类名, 父类名, 脚本路径, 图标路径
	add_custom_type("ObjectPool", "Node2D", preload("scripts/object_pool.gd"), preload("assets/icon.svg"))

func _exit_tree() -> void:
	# 插件卸载时移除自定义节点
	remove_custom_type("ObjectPool")
