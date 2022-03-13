GDPC                                                                                @   res://.import/block.obj-917e86bf9cfe9322dd5e8a7ffbcef164.mesh   `%      _*      �Z>�F�gN��Q4��x�@   res://.import/blocks.obj-372dd380c7b58bdaad88c9948090748f.mesh  �Q      W&      ����
������-@   res://.import/floor.obj-e1216168bbe7f702b624c18b212cc69c.mesh   �z      y6      �-�C��"Z��O�l�?@   res://.import/gorohus.obj-de0c4d43aee11556eb59a7b732c09264.mesh ��      .J      �E�8��d�����'�5<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      �      &�y���ڞu;>��.p@   res://.import/knife.obj-5f78ea6a5bd2c0ffa559e3b4143dd0af.mesh   `     F      \o��$?�}K�U	��   res://Game.tscn �      5      ��s�������H'��   res://UI.tscn   0      .	      G��������E�5�   res://block.obj.import  �O      	      MkM�B���[Duv4A�   res://blocks.obj.import 0x            ��蔄8����Tj�Z�   res://default_env.tres  @z      �       um�`�N��<*ỳ�8   res://floor.obj.import  p�      	      �V;AF����:��[/=   res://gorohus.obj.import��            ۏ�dxn;��"H��)   res://icon.png  ��     �      G1?��z�c��vN��   res://icon.png.import   �     �      ��fe��6�B��^ U�   res://knife.obj.import  �"     	      k��!0��O[�C��   res://project.binaryН           e��2<������2|    res://scripts/KNIFES.gd.remap   ��     )       Z�}�� j3y�0r��W   res://scripts/KNIFES.gdc�$     I      � �yh	:E��;|L(?    res://scripts/KNIFES2.gd.remap   �     *       �Ȝ�w������٫��   res://scripts/KNIFES2.gdc   '     R      a3(�]?�'%��&�    res://scripts/PLAYER.gd.remap   P�     )       tc�h���O5��b$s   res://scripts/PLAYER.gdcp)     �       @����o$��!m��.   res://scripts/UI.gd.remap   ��     %       h��}�d�����   res://scripts/UI.gdc-     �      8e���2��Ү�H    res://scripts/global.gd.remap   ��     )       Z0T\w$�=�����   res://scripts/global.gdc�5     �      H�בg���UA�#5`$   res://vk_sans_display_medium.woff   �7     $X      �?�^GuW��EUYe�        [gd_scene load_steps=13 format=2]

[ext_resource path="res://gorohus.obj" type="ArrayMesh" id=2]
[ext_resource path="res://knife.obj" type="ArrayMesh" id=3]
[ext_resource path="res://UI.tscn" type="PackedScene" id=4]
[ext_resource path="res://scripts/PLAYER.gd" type="Script" id=6]
[ext_resource path="res://scripts/KNIFES.gd" type="Script" id=7]
[ext_resource path="res://scripts/KNIFES2.gd" type="Script" id=8]

[sub_resource type="SphereShape" id=1]
radius = 2.37606

[sub_resource type="BoxShape" id=2]
extents = Vector3( 1, 21.1853, 1 )

[sub_resource type="BoxShape" id=3]
extents = Vector3( 1, 11.4342, 1 )

[sub_resource type="QuadMesh" id=4]

[sub_resource type="SpatialMaterial" id=5]
albedo_color = Color( 0.133333, 0, 0, 1 )

[sub_resource type="Environment" id=6]
background_mode = 1
background_energy = 0.0

[node name="Game" type="Spatial"]

[node name="UI" parent="." instance=ExtResource( 4 )]

[node name="PLAYER" type="StaticBody" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 35, 0 )
script = ExtResource( 6 )

[node name="Mesh" type="MeshInstance" parent="PLAYER"]
mesh = ExtResource( 2 )
skeleton = NodePath("../..")
material/0 = null

[node name="Collision" type="CollisionShape" parent="PLAYER"]
shape = SubResource( 1 )

[node name="KNIFES" type="Area" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -3, -60 )
script = ExtResource( 7 )

[node name="BOTTOM" type="MeshInstance" parent="KNIFES"]
mesh = ExtResource( 3 )
material/0 = null
material/1 = null
material/2 = null
material/3 = null
material/4 = null

[node name="TOP" type="MeshInstance" parent="KNIFES"]
transform = Transform( 1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 90.3571, 0 )
mesh = ExtResource( 3 )
material/0 = null
material/1 = null
material/2 = null
material/3 = null
material/4 = null

[node name="Collision1" type="CollisionShape" parent="KNIFES"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 17.3462, 0 )
shape = SubResource( 2 )

[node name="Collision2" type="CollisionShape" parent="KNIFES"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 73.1355, 0 )
shape = SubResource( 2 )

[node name="Collision3" type="CollisionShape" parent="KNIFES"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 27.1542, 1.55945 )
shape = SubResource( 3 )

[node name="Collision4" type="CollisionShape" parent="KNIFES"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 63.5875, 1.55945 )
shape = SubResource( 3 )

[node name="KNIFES2" type="Area" parent="."]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, -15, -100 )
script = ExtResource( 8 )

[node name="BOTTOM" type="MeshInstance" parent="KNIFES2"]
mesh = ExtResource( 3 )
material/0 = null
material/1 = null
material/2 = null
material/3 = null
material/4 = null

[node name="TOP" type="MeshInstance" parent="KNIFES2"]
transform = Transform( 1, 0, 0, 0, -1, 0, 0, 0, 1, 0, 90.3571, 0 )
mesh = ExtResource( 3 )
material/0 = null
material/1 = null
material/2 = null
material/3 = null
material/4 = null

[node name="Collision1" type="CollisionShape" parent="KNIFES2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 17.3462, 0 )
shape = SubResource( 2 )

[node name="Collision2" type="CollisionShape" parent="KNIFES2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 73.1355, 0 )
shape = SubResource( 2 )

[node name="Collision3" type="CollisionShape" parent="KNIFES2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 27.1542, 1.55945 )
shape = SubResource( 3 )

[node name="Collision4" type="CollisionShape" parent="KNIFES2"]
transform = Transform( 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 63.5875, 1.55945 )
shape = SubResource( 3 )

[node name="BACK" type="MeshInstance" parent="."]
transform = Transform( -6.55671e-06, 0, 1, 0, 80, 0, -187.009, 0, -5.44961e-08, -9.38113, 35.0203, -55.2123 )
mesh = SubResource( 4 )
material/0 = SubResource( 5 )

[node name="bottom" type="MeshInstance" parent="BACK"]
transform = Transform( -1.39324e-08, 1.29489, 5.14023e-09, 1.21845e-05, -6.07372e-08, 0.126187, 47.8121, 8.49019e-06, 1.40029e-07, 0.0522826, -0.363638, 23.1132 )
mesh = SubResource( 4 )
skeleton = NodePath("../..")
material/0 = SubResource( 5 )

[node name="top" type="MeshInstance" parent="BACK"]
transform = Transform( -2.67834e-06, -1.12737, -1.3101e-09, 0, 1.54414e-08, -0.126187, 41.6827, -2.40756e-06, -2.7978e-15, 0.0522827, 0.382037, 17.0808 )
mesh = SubResource( 4 )
skeleton = NodePath("../..")
material/0 = SubResource( 5 )

[node name="Camera" type="Camera" parent="."]
transform = Transform( 0.385326, 0, 0.92278, 0, 1, 0, -0.92278, 0, 0.385326, 44.2116, 35, 6.25308 )
far = 1014.7

[node name="SpotLight" type="SpotLight" parent="."]
transform = Transform( -0.0936243, -0.188018, 0.977693, -0.0201417, 0.982163, 0.186948, -0.995404, -0.0021895, -0.0957413, 54.0102, 47.8721, -28.1295 )
light_energy = 4.319
shadow_enabled = true
shadow_bias = 2.5
spot_range = 123.62
spot_angle = 37.1531

[node name="World" type="WorldEnvironment" parent="."]
environment = SubResource( 6 )

[connection signal="body_entered" from="KNIFES" to="PLAYER" method="_on_KNIFES_body_entered"]
[connection signal="body_entered" from="KNIFES2" to="PLAYER" method="_on_KNIFES2_body_entered"]
           [gd_scene load_steps=6 format=2]

[ext_resource path="res://vk_sans_display_medium.woff" type="DynamicFontData" id=1]
[ext_resource path="res://scripts/UI.gd" type="Script" id=2]

[sub_resource type="DynamicFont" id=1]
size = 80
outline_color = Color( 0.533333, 1, 0.482353, 1 )
use_filter = true
font_data = ExtResource( 1 )

[sub_resource type="DynamicFont" id=6]
size = 80
outline_color = Color( 0.533333, 1, 0.482353, 1 )
use_filter = true
font_data = ExtResource( 1 )

[sub_resource type="DynamicFont" id=7]
size = 80
outline_color = Color( 0.533333, 1, 0.482353, 1 )
use_filter = true
font_data = ExtResource( 1 )

[node name="UI" type="Control"]
anchor_right = 1.0
anchor_bottom = 1.0
script = ExtResource( 2 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="score" type="Label" parent="."]
anchor_left = 0.5
anchor_right = 0.5
margin_left = -336.0
margin_top = 40.0
margin_right = 336.0
margin_bottom = 144.0
custom_colors/font_color = Color( 0.533333, 1, 0.482353, 1 )
custom_fonts/font = SubResource( 1 )
text = "0 - 0"
align = 1
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Container" type="Container" parent="."]
anchor_left = 0.5
anchor_top = 1.0
anchor_right = 0.5
anchor_bottom = 1.0
margin_left = -360.0
margin_top = -512.0
margin_right = 360.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ButtonStart" type="Button" parent="Container"]
margin_top = 192.0
margin_right = 720.0
margin_bottom = 320.0
focus_mode = 0
custom_colors/font_color = Color( 0.533333, 1, 0.482353, 1 )
custom_fonts/font = SubResource( 6 )
enabled_focus_mode = 0
text = "СТАРТ"
flat = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ButtonLiders" type="Button" parent="Container"]
margin_top = 64.0
margin_right = 720.0
margin_bottom = 192.0
focus_mode = 0
custom_colors/font_color = Color( 0.533333, 1, 0.482353, 1 )
custom_fonts/font = SubResource( 7 )
enabled_focus_mode = 0
text = "ЛИДЕРЫ"
flat = true
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ColorRect" type="ColorRect" parent="."]
anchor_right = 1.0
anchor_bottom = 1.0
color = Color( 0, 0, 0, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[connection signal="pressed" from="Container/ButtonStart" to="." method="_on_Button_pressed"]
[connection signal="pressed" from="Container/ButtonLiders" to="." method="_on_ButtonLiders_pressed"]
  RSRC                 
   ArrayMesh                                                                 H      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    surfaces/2    surfaces/3    surfaces/4    surfaces/5    surfaces/6    surfaces/7    surfaces/8     
   
   local://1 [      
   local://2 �      
   local://3       
   local://4 n      
   local://5 �      
   local://6 (	      
   local://7 �	      
   local://8 �	      
   local://9 ?
         local://10 �
         SpatialMaterial             Материал       ��<=��<=��<=  �?         ?   SpatialMaterial             Материал.001       ���=�M�:      �?         ?   SpatialMaterial             Материал.002       ���=�M�:      �?         ?   SpatialMaterial             Материал.003       ���=�M�:      �?         ?   SpatialMaterial             Материал.004       ���=�M�:      �?         ?   SpatialMaterial             Материал.005       ��
>�z;      �?         ?   SpatialMaterial             Материал.006       ���=�M�:      �?         ?   SpatialMaterial             Материал.007       ���=�M�:      �?         ?   SpatialMaterial             Материал.008       ���=�M�:      �?         ?
   ArrayMesh 	   ?               array_data    �  r���v�@/a|A�   9 <r���v��/a|A�   6 <r���v�@/a|��   9 :r���v��/a|��   6 :r���v�@/a|�  9 :r���v��/a|�  6 :r�@�v�@/a|�  9 8r�@�v��/a|�  6 8r�@�v�@/a|�   9 8r�@�v��/a|�   6 8r�@�v�@/a|A   9 4r�@�v��/a|A   6 4r�@�v�@/a|A    9 4r�@�v��/a|A    6 4r���v�@/a|A    9  r���v��/a|A    6  r�@�v��/a|� �? 6 8r���v��/a|� �? 0 8r�@�v��/a|A �? 6 4r���v��/a|A �? 0 4r���v�@/a|� �? ; 8r�@�v�@/a|� �? 9 8r���v�@/a|A �? ; 4r�@�v�@/a|A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    r���v��/a|�rFA�vA4a�A      skeleton_aabb              blend_shape_data           	   material                name       Материал @               array_data    �  �~��N��@��~A�   9 <�~����@��~A�   6 <�~��N��@��~��   9 :�~����@��~��   6 :�~��N��@��~�  9 :�~����@��~�  6 :�~�@N��@��~�  9 8�~�@��@��~�  6 8�~�@N��@��~�   9 8�~�@��@��~�   6 8�~�@N��@��~A   9 4�~�@��@��~A   6 4�~�@N��@��~A    9 4�~�@��@��~A    6 4�~��N��@��~A    9  �~����@��~A    6  �~�@��@��~� �? 6 8�~����@��~� �? 0 8�~�@��@��~A �? 6 4�~����@��~A �? 0 4�~��N��@��~� �? ; 8�~�@N��@��~� �? 9 8�~��N��@��~A �? ; 4�~�@N��@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~����@��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал A               array_data    �  r�����@w��@�   9 <r��gC�@w��@�   6 <r�����@�{L��   9 :r��gC�@�{L��   6 :r�����@�{L�  9 :r��gC�@�{L�  6 :r�@���@�{L�  9 8r�@gC�@�{L�  6 8r�@���@�{L�   9 8r�@gC�@�{L�   6 8r�@���@w��@   9 4r�@gC�@w��@   6 4r�@���@w��@    9 4r�@gC�@w��@    6 4r�����@w��@    9  r��gC�@w��@    6  r�@gC�@�{L� �? 6 8r��gC�@�{L� �? 0 8r�@gC�@w��@ �? 6 4r��gC�@w��@ �? 0 4r�����@�{L� �? ; 8r�@���@�{L� �? 9 8r�����@w��@ �? ; 4r�@���@w��@ �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    r��gC�@�{L�rFA�i�?�@      skeleton_aabb              blend_shape_data           	   material                name       Материал B               array_data    �  r�����@��|A�   9 <r��gC�@��|A�   6 <r�����@D8#A�   9 :r��gC�@D8#A�   6 :r�����@D8#A  9 :r��gC�@D8#A  6 :r�@���@D8#A  9 8r�@gC�@D8#A  6 8r�@���@D8#A   9 8r�@gC�@D8#A   6 8r�@���@��|A   9 4r�@gC�@��|A   6 4r�@���@��|A    9 4r�@gC�@��|A    6 4r�����@��|A    9  r��gC�@��|A    6  r�@gC�@D8#A �? 6 8r��gC�@D8#A �? 0 8r�@gC�@��|A �? 6 4r��gC�@��|A �? 0 4r�����@D8#A �? ; 8r�@���@D8#A �? 9 8r�����@��|A �? ; 4r�@���@��|A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    r��gC�@D8#ArFA�i�?�@      skeleton_aabb              blend_shape_data           	   material                name       Материал C               array_data    �  r�����@�p���   9 <r��gC�@�p���   6 <r�����@��<��   9 :r��gC�@��<��   6 :r�����@��<�  9 :r��gC�@��<�  6 :r�@���@��<�  9 8r�@gC�@��<�  6 8r�@���@��<�   9 8r�@gC�@��<�   6 8r�@���@�p��   9 4r�@gC�@�p��   6 4r�@���@�p��    9 4r�@gC�@�p��    6 4r�����@�p��    9  r��gC�@�p��    6  r�@gC�@��<� �? 6 8r��gC�@��<� �? 0 8r�@gC�@�p�� �? 6 4r��gC�@�p�� �? 0 4r�����@��<� �? ; 8r�@���@��<� �? 9 8r�����@�p�� �? ; 4r�@���@�p�� �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    r��gC�@��<�rFA�i�?�@      skeleton_aabb              blend_shape_data           	   material                name       Материал D               array_data    �  �~\�U��@�tA�   9 <�~\��R�@�tA�   6 <�~\�U��@�t��   9 :�~\��R�@�t��   6 :�~\�U��@�t�  9 :�~\��R�@�t�  6 :�~\@U��@�t�  9 8�~\@�R�@�t�  6 8�~\@U��@�t�   9 8�~\@�R�@�t�   6 8�~\@U��@�tA   9 4�~\@�R�@�tA   6 4�~\@U��@�tA    9 4�~\@�R�@�tA    6 4�~\�U��@�tA    9  �~\��R�@�tA    6  �~\@�R�@�t� �? 6 8�~\��R�@�t� �? 0 8�~\@�R�@�tA �? 6 4�~\��R�@�tA �? 0 4�~\�U��@�t� �? ; 8�~\@U��@�t� �? 9 8�~\�U��@�tA �? ; 4�~\@U��@�tA �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~\��R�@�t��~�@P�?��A      skeleton_aabb              blend_shape_data           	   material                name       Материал E               array_data    �  �~���V7@��~A�   9 <�~���C�?��~A�   6 <�~���V7@��~��   9 :�~���C�?��~��   6 :�~���V7@��~�  9 :�~���C�?��~�  6 :�~�@�V7@��~�  9 8�~�@�C�?��~�  6 8�~�@�V7@��~�   9 8�~�@�C�?��~�   6 8�~�@�V7@��~A   9 4�~�@�C�?��~A   6 4�~�@�V7@��~A    9 4�~�@�C�?��~A    6 4�~���V7@��~A    9  �~���C�?��~A    6  �~�@�C�?��~� �? 6 8�~���C�?��~� �? 0 8�~�@�C�?��~A �? 6 4�~���C�?��~A �? 0 4�~���V7@��~� �? ; 8�~�@�V7@��~� �? 9 8�~���V7@��~A �? ; 4�~�@�V7@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~���C�?��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал F               array_data    �  �~��O�
���~A�   9 <�~��<�ۿ��~A�   6 <�~��O�
���~��   9 :�~��<�ۿ��~��   6 :�~��O�
���~�  9 :�~��<�ۿ��~�  6 :�~�@O�
���~�  9 8�~�@<�ۿ��~�  6 8�~�@O�
���~�   9 8�~�@<�ۿ��~�   6 8�~�@O�
���~A   9 4�~�@<�ۿ��~A   6 4�~�@O�
���~A    9 4�~�@<�ۿ��~A    6 4�~��O�
���~A    9  �~��<�ۿ��~A    6  �~�@<�ۿ��~� �? 6 8�~��<�ۿ��~� �? 0 8�~�@<�ۿ��~A �? 6 4�~��<�ۿ��~A �? 0 4�~��O�
���~� �? ; 8�~�@O�
���~� �? 9 8�~��O�
���~A �? ; 4�~�@O�
���~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~��<�ۿ��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал G               array_data    �  �~��e�H���~A�   9 <�~������~A�   6 <�~��e�H���~��   9 :�~������~��   6 :�~��e�H���~�  9 :�~������~�  6 :�~�@e�H���~�  9 8�~�@����~�  6 8�~�@e�H���~�   9 8�~�@����~�   6 8�~�@e�H���~A   9 4�~�@����~A   6 4�~�@e�H���~A    9 4�~�@����~A    6 4�~��e�H���~A    9  �~������~A    6  �~�@����~� �? 6 8�~������~� �? 0 8�~�@����~A �? 6 4�~������~A �? 0 4�~��e�H���~� �? ; 8�~�@e�H���~� �? 9 8�~��e�H���~A �? ; 4�~�@e�H���~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~������~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material       	         name       Материал RSRC [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/block.obj-917e86bf9cfe9322dd5e8a7ffbcef164.mesh"

[deps]

files=[ "res://.import/block.obj-917e86bf9cfe9322dd5e8a7ffbcef164.mesh" ]

source_file="res://block.obj"
dest_files=[ "res://.import/block.obj-917e86bf9cfe9322dd5e8a7ffbcef164.mesh", "res://.import/block.obj-917e86bf9cfe9322dd5e8a7ffbcef164.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
octahedral_compression=true
optimize_mesh_flags=4286
       RSRC                 
   ArrayMesh                                                                 G      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    surfaces/2    surfaces/3    surfaces/4    surfaces/5    surfaces/6    surfaces/7     	   
   local://1 5      
   local://2 �      
   local://3 �      
   local://4 H      
   local://5 �      
   local://6 	      
   local://7 _	      
   local://8 �	      
   local://9 
         SpatialMaterial             Материал       ��<=��<=��<=  �?         ?   SpatialMaterial             Материал.001       ���=�M�:      �?         ?   SpatialMaterial             Материал.006       ���=�M�:      �?         ?   SpatialMaterial             Материал.007       ���=�M�:      �?         ?   SpatialMaterial             Материал.008       ���=�M�:      �?         ?   SpatialMaterial             Материал.009       ���=�M�:      �?         ?   SpatialMaterial             Материал.010       ���=�M�:      �?         ?   SpatialMaterial             Материал.011       ���=�M�:      �?         ?
   ArrayMesh    ?               array_data    �  r���v�@0a|A�  ~ 9 <r���v��/a|A�  ~ 6 <r���v�@/a|��  ~ 9 :r���v��0a|��  ~ 6 :r���v�@/a|�  9 :r���v��0a|�  6 :r�@�v�@/a|�  9 8r�@�v��0a|�  6 8r�@�v�@/a|�  ~ 9 8r�@�v��0a|�   6 8r�@�v�@0a|A   9 4r�@�v��/a|A  ~ 6 4r�@�v�@0a|A    9 4r�@�v��/a|A    6 4r���v�@0a|A    9  r���v��/a|A    6  r�@�v��0a|� �? 6 8r���v��0a|� �? 0 8r�@�v��/a|A �? 6 4r���v��/a|A �? 0 4r���v�@/a|� �? ; 8r�@�v�@/a|� �? 9 8r���v�@0a|A �? ; 4r�@�v�@0a|A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    r���v��0a|�rFA�vA4a�A      skeleton_aabb              blend_shape_data           	   material                name       Материал @               array_data    �  �~��I��@��~A�   9 <�~����@��~A�   6 <�~��T��@��~��   9 :�~����@��~��   6 :�~��T��@��~�  9 :�~����@��~�  6 :�~�@T��@��~�  9 8�~�@��@��~�  6 8�~�@T��@��~�   9 8�~�@��@��~�   6 8�~�@I��@��~A   9 4�~�@��@��~A   6 4�~�@I��@��~A    9 4�~�@��@��~A    6 4�~��I��@��~A    9  �~����@��~A    6  �~�@��@��~� �? 6 8�~����@��~� �? 0 8�~�@��@��~A �? 6 4�~����@��~A �? 0 4�~��T��@��~� �? ; 8�~�@T��@��~� �? 9 8�~��I��@��~A �? ; 4�~�@I��@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~����@��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал A               array_data    �  �~���V7@��~A�   9 <�~���C�?��~A�   6 <�~���V7@��~��   9 :�~���C�?��~��   6 :�~���V7@��~�  9 :�~���C�?��~�  6 :�~�@�V7@��~�  9 8�~�@�C�?��~�  6 8�~�@�V7@��~�   9 8�~�@�C�?��~�   6 8�~�@�V7@��~A   9 4�~�@�C�?��~A   6 4�~�@�V7@��~A    9 4�~�@�C�?��~A    6 4�~���V7@��~A    9  �~���C�?��~A    6  �~�@�C�?��~� �? 6 8�~���C�?��~� �? 0 8�~�@�C�?��~A �? 6 4�~���C�?��~A �? 0 4�~���V7@��~� �? ; 8�~�@�V7@��~� �? 9 8�~���V7@��~A �? ; 4�~�@�V7@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~���C�?��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал B               array_data    �  �~���
���~A�   9 <�~��V�ۿ��~A�   6 <�~����
���~��   9 :�~��#�ۿ��~��   6 :�~����
���~�  9 :�~��#�ۿ��~�  6 :�~�@��
���~�  9 8�~�@#�ۿ��~�  6 8�~�@��
���~�   9 8�~�@#�ۿ��~�   6 8�~�@�
���~A   9 4�~�@V�ۿ��~A   6 4�~�@�
���~A    9 4�~�@V�ۿ��~A    6 4�~���
���~A    9  �~��V�ۿ��~A    6  �~�@#�ۿ��~� �? 6 8�~��#�ۿ��~� �? 0 8�~�@V�ۿ��~A �? 6 4�~��V�ۿ��~A �? 0 4�~����
���~� �? ; 8�~�@��
���~� �? 9 8�~���
���~A �? ; 4�~�@�
���~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~��V�ۿ��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал C               array_data    �  �~��q�H���~A�   9 <�~������~A�   6 <�~��X�H���~��   9 :�~������~��   6 :�~��X�H���~�  9 :�~������~�  6 :�~�@X�H���~�  9 8�~�@����~�  6 8�~�@X�H���~�   9 8�~�@����~�   6 8�~�@q�H���~A   9 4�~�@����~A   6 4�~�@q�H���~A    9 4�~�@����~A    6 4�~��q�H���~A    9  �~������~A    6  �~�@����~� �? 6 8�~������~� �? 0 8�~�@����~A �? 6 4�~������~A �? 0 4�~��X�H���~� �? ; 8�~�@X�H���~� �? 9 8�~��q�H���~A �? ; 4�~�@q�H���~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~������~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал D               array_data    �  ���qh�@��~A�   9 <����
�@��~A�   6 <���{h�@��~��   9 :����
�@��~��   6 :���{h�@��~�  9 :����
�@��~�  6 :R��{h�@��~�  9 8R���
�@��~�  6 8R��{h�@��~�   9 8R���
�@��~�   6 8R��qh�@��~A   9 4R���
�@��~A   6 4R��qh�@��~A    9 4R���
�@��~A    6 4���qh�@��~A    9  ����
�@��~A    6  R���
�@��~� �? 6 8����
�@��~� �? 0 8R���
�@��~A �? 6 4����
�@��~A �? 0 4���{h�@��~� �? ; 8R��{h�@��~� �? 9 8���qh�@��~A �? ; 4R��qh�@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    ����
�@��~�pe�?(�
?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал E               array_data    �  R�@qh�@��~A�   9 <R�@�
�@��~A�   6 <R�@{h�@��~��   9 :R�@�
�@��~��   6 :R�@{h�@��~�  9 :R�@�
�@��~�  6 :��@{h�@��~�  9 8��@�
�@��~�  6 8��@{h�@��~�   9 8��@�
�@��~�   6 8��@qh�@��~A   9 4��@�
�@��~A   6 4��@qh�@��~A    9 4��@�
�@��~A    6 4R�@qh�@��~A    9  R�@�
�@��~A    6  ��@�
�@��~� �? 6 8R�@�
�@��~� �? 0 8��@�
�@��~A �? 6 4R�@�
�@��~A �? 0 4R�@{h�@��~� �? ; 8��@{h�@��~� �? 9 8R�@qh�@��~A �? ; 4��@qh�@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    R�@�
�@��~�pe�?(�
?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал F               array_data    �  se0�qh�@��~A�   9 <se0��
�@��~A�   6 <se0�{h�@��~��   9 :se0��
�@��~��   6 :se0�{h�@��~�  9 :se0��
�@��~�  6 :se0?{h�@��~�  9 8se0?�
�@��~�  6 8se0?{h�@��~�   9 8se0?�
�@��~�   6 8se0?qh�@��~A   9 4se0?�
�@��~A   6 4se0?qh�@��~A    9 4se0?�
�@��~A    6 4se0�qh�@��~A    9  se0��
�@��~A    6  se0?�
�@��~� �? 6 8se0��
�@��~� �? 0 8se0?�
�@��~A �? 6 4se0��
�@��~A �? 0 4se0�{h�@��~� �? ; 8se0?{h�@��~� �? 9 8se0�qh�@��~A �? ; 4se0?qh�@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    se0��
�@��~�se�?(�
?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал RSRC         [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/blocks.obj-372dd380c7b58bdaad88c9948090748f.mesh"

[deps]

files=[ "res://.import/blocks.obj-372dd380c7b58bdaad88c9948090748f.mesh" ]

source_file="res://blocks.obj"
dest_files=[ "res://.import/blocks.obj-372dd380c7b58bdaad88c9948090748f.mesh", "res://.import/blocks.obj-372dd380c7b58bdaad88c9948090748f.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
octahedral_compression=true
optimize_mesh_flags=4286
  [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             RSRC                 
   ArrayMesh                                                                 K      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    surfaces/2    surfaces/3    surfaces/4    surfaces/5    surfaces/6    surfaces/7    surfaces/8    surfaces/9    surfaces/10    surfaces/11        
   local://1 �      
   local://2 (      
   local://3 �      
   local://4 �      
   local://5 ?	      
   local://6 �	      
   local://7 �	      
   local://8 V
      
   local://9 �
         local://10          local://11 m         local://12 �         local://13 '         SpatialMaterial             Материал       ��<=��<=��<=  �?         ?   SpatialMaterial             Материал.001       ���=�M�:      �?         ?   SpatialMaterial             Материал.006       ���=�M�:      �?         ?   SpatialMaterial             Материал.007       ���=�M�:      �?         ?   SpatialMaterial             Материал.008       ���=�M�:      �?         ?   SpatialMaterial             Материал.009       ���=�M�:      �?         ?   SpatialMaterial             Материал.010       ���=�M�:      �?         ?   SpatialMaterial             Материал.011       ���=�M�:      �?         ?   SpatialMaterial             Материал.012       ���=�M�:      �?         ?   SpatialMaterial             Материал.013       ���=�M�:      �?         ?   SpatialMaterial             Материал.015       ���=�M�:      �?         ?   SpatialMaterial             Материал.014       ���=�M�:      �?         ?
   ArrayMesh    ?               array_data    �  r���v�@0a|A�  ~ 9 <r���v��/a|A�  ~ 6 <r���v�@/a|��  ~ 9 :r���v��0a|��  ~ 6 :r���v�@/a|�  9 :r���v��0a|�  6 :r�@�v�@/a|�  9 8r�@�v��0a|�  6 8r�@�v�@/a|�  ~ 9 8r�@�v��0a|�   6 8r�@�v�@0a|A   9 4r�@�v��/a|A  ~ 6 4r�@�v�@0a|A    9 4r�@�v��/a|A    6 4r���v�@0a|A    9  r���v��/a|A    6  r�@�v��0a|� �? 6 8r���v��0a|� �? 0 8r�@�v��/a|A �? 6 4r���v��/a|A �? 0 4r���v�@/a|� �? ; 8r�@�v�@/a|� �? 9 8r���v�@0a|A �? ; 4r�@�v�@0a|A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    r���v��0a|�rFA�vA4a�A      skeleton_aabb              blend_shape_data           	   material                name       Материал @               array_data    �  �~��I��@��~A�   9 <�~����@��~A�   6 <�~��T��@��~��   9 :�~����@��~��   6 :�~��T��@��~�  9 :�~����@��~�  6 :�~�@T��@��~�  9 8�~�@��@��~�  6 8�~�@T��@��~�   9 8�~�@��@��~�   6 8�~�@I��@��~A   9 4�~�@��@��~A   6 4�~�@I��@��~A    9 4�~�@��@��~A    6 4�~��I��@��~A    9  �~����@��~A    6  �~�@��@��~� �? 6 8�~����@��~� �? 0 8�~�@��@��~A �? 6 4�~����@��~A �? 0 4�~��T��@��~� �? ; 8�~�@T��@��~� �? 9 8�~��I��@��~A �? ; 4�~�@I��@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~����@��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал A               array_data    �  �~���V7@��~A�   9 <�~���C�?��~A�   6 <�~���V7@��~��   9 :�~���C�?��~��   6 :�~���V7@��~�  9 :�~���C�?��~�  6 :�~�@�V7@��~�  9 8�~�@�C�?��~�  6 8�~�@�V7@��~�   9 8�~�@�C�?��~�   6 8�~�@�V7@��~A   9 4�~�@�C�?��~A   6 4�~�@�V7@��~A    9 4�~�@�C�?��~A    6 4�~���V7@��~A    9  �~���C�?��~A    6  �~�@�C�?��~� �? 6 8�~���C�?��~� �? 0 8�~�@�C�?��~A �? 6 4�~���C�?��~A �? 0 4�~���V7@��~� �? ; 8�~�@�V7@��~� �? 9 8�~���V7@��~A �? ; 4�~�@�V7@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~���C�?��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал B               array_data    �  �~���
���~A�   9 <�~��V�ۿ��~A�   6 <�~����
���~��   9 :�~��#�ۿ��~��   6 :�~����
���~�  9 :�~��#�ۿ��~�  6 :�~�@��
���~�  9 8�~�@#�ۿ��~�  6 8�~�@��
���~�   9 8�~�@#�ۿ��~�   6 8�~�@�
���~A   9 4�~�@V�ۿ��~A   6 4�~�@�
���~A    9 4�~�@V�ۿ��~A    6 4�~���
���~A    9  �~��V�ۿ��~A    6  �~�@#�ۿ��~� �? 6 8�~��#�ۿ��~� �? 0 8�~�@V�ۿ��~A �? 6 4�~��V�ۿ��~A �? 0 4�~����
���~� �? ; 8�~�@��
���~� �? 9 8�~���
���~A �? ; 4�~�@�
���~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~��V�ۿ��~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал C               array_data    �  �~��q�H���~A�   9 <�~������~A�   6 <�~��X�H���~��   9 :�~������~��   6 :�~��X�H���~�  9 :�~������~�  6 :�~�@X�H���~�  9 8�~�@����~�  6 8�~�@X�H���~�   9 8�~�@����~�   6 8�~�@q�H���~A   9 4�~�@����~A   6 4�~�@q�H���~A    9 4�~�@����~A    6 4�~��q�H���~A    9  �~������~A    6  �~�@����~� �? 6 8�~������~� �? 0 8�~�@����~A �? 6 4�~������~A �? 0 4�~��X�H���~� �? ; 8�~�@X�H���~� �? 9 8�~��q�H���~A �? ; 4�~�@q�H���~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    �~������~��~\A�i�?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал D               array_data    �  ���qh�@��~A�   9 <����
�@��~A�   6 <���{h�@��~��   9 :����
�@��~��   6 :���{h�@��~�  9 :����
�@��~�  6 :R��{h�@��~�  9 8R���
�@��~�  6 8R��{h�@��~�   9 8R���
�@��~�   6 8R��qh�@��~A   9 4R���
�@��~A   6 4R��qh�@��~A    9 4R���
�@��~A    6 4���qh�@��~A    9  ����
�@��~A    6  R���
�@��~� �? 6 8����
�@��~� �? 0 8R���
�@��~A �? 6 4����
�@��~A �? 0 4���{h�@��~� �? ; 8R��{h�@��~� �? 9 8���qh�@��~A �? ; 4R��qh�@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    ����
�@��~�pe�?(�
?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал E               array_data    �  R�@qh�@��~A�   9 <R�@�
�@��~A�   6 <R�@{h�@��~��   9 :R�@�
�@��~��   6 :R�@{h�@��~�  9 :R�@�
�@��~�  6 :��@{h�@��~�  9 8��@�
�@��~�  6 8��@{h�@��~�   9 8��@�
�@��~�   6 8��@qh�@��~A   9 4��@�
�@��~A   6 4��@qh�@��~A    9 4��@�
�@��~A    6 4R�@qh�@��~A    9  R�@�
�@��~A    6  ��@�
�@��~� �? 6 8R�@�
�@��~� �? 0 8��@�
�@��~A �? 6 4R�@�
�@��~A �? 0 4R�@{h�@��~� �? ; 8��@{h�@��~� �? 9 8R�@qh�@��~A �? ; 4��@qh�@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    R�@�
�@��~�pe�?(�
?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал F               array_data    �  se0�qh�@��~A�   9 <se0��
�@��~A�   6 <se0�{h�@��~��   9 :se0��
�@��~��   6 :se0�{h�@��~�  9 :se0��
�@��~�  6 :se0?{h�@��~�  9 8se0?�
�@��~�  6 8se0?{h�@��~�   9 8se0?�
�@��~�   6 8se0?qh�@��~A   9 4se0?�
�@��~A   6 4se0?qh�@��~A    9 4se0?�
�@��~A    6 4se0�qh�@��~A    9  se0��
�@��~A    6  se0?�
�@��~� �? 6 8se0��
�@��~� �? 0 8se0?�
�@��~A �? 6 4se0��
�@��~A �? 0 4se0�{h�@��~� �? ; 8se0?{h�@��~� �? 9 8se0�qh�@��~A �? ; 4se0?qh�@��~A �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    se0��
�@��~�se�?(�
?���A      skeleton_aabb              blend_shape_data           	   material                name       Материал G               array_data    �  hk��wh�@se0� ~ 9 <fk���
�@se0� ~ 6 <Ӥ4�yh�@se0� ~ 9 :Ӥ4��
�@se0�  6 :Ӥ4�yh�@se0�   9 :Ӥ4��
�@se0�   6 :Ӥ4�yh�@se0?   9 8Ӥ4��
�@se0?   6 8Ӥ4�yh�@se0?    9 8Ӥ4��
�@se0?    6 8fk��wh�@se0?    9 4fk���
�@se0?    6 4fk��wh�@se0?�   9 4fk���
�@se0?�   6 4hk��wh�@se0��   9  fk���
�@se0��   6  Ӥ4��
�@se0? � ? 6 8Ӥ4��
�@se0� � ? 0 8fk���
�@se0? � ? 6 4fk���
�@se0� � ? 0 4Ӥ4�yh�@se0�  ; 8Ӥ4�yh�@se0? �~ 9 8hk��wh�@se0� �~ ; 4fk��wh�@se0? �~ 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    hk���
�@se0��֒@(�
?se�?      skeleton_aabb              blend_shape_data           	   material       	         name       Материал H               array_data    �  ¤4?wh�@se0� ~ 9 <Ӥ4?�
�@se0� ~ 6 <fk�@yh�@se0� ~ 9 :fk�@�
�@se0�  6 :fk�@yh�@se0�   9 :fk�@�
�@se0�   6 :fk�@yh�@se0?   9 8fk�@�
�@se0?   6 8fk�@yh�@se0?    9 8fk�@�
�@se0?    6 8Ӥ4?wh�@se0?    9 4Ӥ4?�
�@se0?    6 4Ӥ4?wh�@se0?�   9 4Ӥ4?�
�@se0?�   6 4¤4?wh�@se0��   9  Ӥ4?�
�@se0��   6  fk�@�
�@se0? � ? 6 8fk�@�
�@se0� � ? 0 8Ӥ4?�
�@se0? � ? 6 4Ӥ4?�
�@se0� � ? 0 4fk�@yh�@se0�  ; 8fk�@yh�@se0? �~ 9 8¤4?wh�@se0� �~ ; 4Ӥ4?wh�@se0? �~ 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    ¤4?�
�@se0��֒@(�
?se�?      skeleton_aabb              blend_shape_data           	   material       
         name       Материал I               array_data    �  hk��wh�@se0� ~ 9 <fk���
�@se0� ~ 6 <Ӥ4�yh�@se0� ~ 9 :Ӥ4��
�@se0�  6 :Ӥ4�yh�@se0�   9 :Ӥ4��
�@se0�   6 :Ӥ4�yh�@se0?   9 8Ӥ4��
�@se0?   6 8Ӥ4�yh�@se0?    9 8Ӥ4��
�@se0?    6 8fk��wh�@se0?    9 4fk���
�@se0?    6 4fk��wh�@se0?�   9 4fk���
�@se0?�   6 4hk��wh�@se0��   9  fk���
�@se0��   6  Ӥ4��
�@se0? � ? 6 8Ӥ4��
�@se0� � ? 0 8fk���
�@se0? � ? 6 4fk���
�@se0� � ? 0 4Ӥ4�yh�@se0�  ; 8Ӥ4�yh�@se0? �~ 9 8hk��wh�@se0� �~ ; 4fk��wh�@se0? �~ 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    hk���
�@se0��֒@(�
?se�?      skeleton_aabb              blend_shape_data           	   material                name       Материал J               array_data    �  ¤4?wh�@se0� ~ 9 <Ӥ4?�
�@se0� ~ 6 <fk�@yh�@se0� ~ 9 :fk�@�
�@se0�  6 :fk�@yh�@se0�   9 :fk�@�
�@se0�   6 :fk�@yh�@se0?   9 8fk�@�
�@se0?   6 8fk�@yh�@se0?    9 8fk�@�
�@se0?    6 8Ӥ4?wh�@se0?    9 4Ӥ4?�
�@se0?    6 4Ӥ4?wh�@se0?�   9 4Ӥ4?�
�@se0?�   6 4¤4?wh�@se0��   9  Ӥ4?�
�@se0��   6  fk�@�
�@se0? � ? 6 8fk�@�
�@se0� � ? 0 8Ӥ4?�
�@se0? � ? 6 4Ӥ4?�
�@se0� � ? 0 4fk�@yh�@se0�  ; 8fk�@yh�@se0? �~ 9 8¤4?wh�@se0� �~ ; 4Ӥ4?wh�@se0? �~ 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    ¤4?�
�@se0��֒@(�
?se�?      skeleton_aabb              blend_shape_data           	   material                name       Материал RSRC       [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/floor.obj-e1216168bbe7f702b624c18b212cc69c.mesh"

[deps]

files=[ "res://.import/floor.obj-e1216168bbe7f702b624c18b212cc69c.mesh" ]

source_file="res://floor.obj"
dest_files=[ "res://.import/floor.obj-e1216168bbe7f702b624c18b212cc69c.mesh", "res://.import/floor.obj-e1216168bbe7f702b624c18b212cc69c.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
octahedral_compression=true
optimize_mesh_flags=4286
       RSRC                 
   ArrayMesh                                                                 @      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0        
   local://1 2      
   local://2 �         SpatialMaterial             Материал.014       ~�/<��L?      �?         ?
   ArrayMesh    ?               array_data    �+      ˻���~�%��? : ;    �3#�����? :�;��F>˻���y�*��4�9 ;���=�3#�������J�9�;    '�?�3#�j�? : 7        ff&��? : 8��>'�? �ll�J�9 7'�?    �3#�i�J�9 8�7��ff&@�7�5 �E�9      �3#@'���? : ,���=�3#@����z�4�9 ,    ff&��7�5 ��E�9 <    '���3#�j��? :�8��>'�� �l��4�9�8    ˻@ж~�%�? : 0	�F>˻@��y�*x�J�9 0    ж~�ǻ�Y��? : 9|��>ж~����^��J�9 9    F[
@�丿3�? : 2�H�>F[
@OW��8u�4�9 2�7�5�丿>[
�L��? :�9���>�丿���Q��4�9�9    ?S�??S�?�? : 4w��>?S�?���Ds�4�9 4    ?S�7S�?��? : :w��>?S뿯��D��J�9 :    ��?F[
�L�? : 5���>��?���Qq�J�9 5    F[
��丿3��? :�:�H�>F[
�OW��8��J�9�:    ж~?˻�Y�? : 6|��>ж~?���^o�4�9 6y�S?��?H���Tf�,�9 5?Sk?ж~?�`b�,�9 6��?F[
��Ѫ�;��,�9�:��>˻�.Sk�-��R�9 ;��y?'�?���n^�,�9 7��F>�3#�[����,�9�;ж~?    ˻�Y�R�9 8�7��ff&@�7�5 �N�9  	�F>�3#@|��w�R�9 ,    ff&��7�5 ��N�9 <��y?'�����n��R�9�8=��>˻@?Sk�-q�,�9 0?Sk?ж~��`��R�9 9��?F[
@�Ѫ�;m�R�9 2y�S?�丿H���T��R�9�9.4??S�?iٿHi�,�9 4.4??S�iٿH��R�9 :XW�?'�����o��X@9�8�Ѫ?ж~�H���a��X@9 9��?˻@y�S�.l�X@9 0mqM?F[
@ǻ��=f�X@9 2ϻ�?�丿�U��&@9�9^��??S�?i�ÿJa�X@9 4^��??S�i�ÿJ��&@9 :ϻ�?��?�U\�X@9 5mqM?F[
�ǻ��=��&@9�:�Ѫ?ж~?H���aW�&@9 6��?˻�y�S�.��&@9 ;XW�?'�?���oR�&@9 7�H�>�3#���׾��X@9�;��?    F[
�L�X@9 8�7��ff&@�7�5 �U`9  �H�>�3#@��׾s�&@9 ,    ff&��7�5 ��U`9 <^��?F[
�U���>��_ 9�:.4?˻�.4�/�� 9 ;i�?ж~?iٿbM� 9 6���?'�?���oG� 9 7w��>�3#�w����� 9�;?S�?    7S�?�_ 9 8�7��ff&@�7�5 �\ 9  ���>�3#@w���p� 9 ,    ff&��7�5 ��\ 9 <���?'�����o�� 9�8?4?˻@.4�/g� 9 0i�?ж~�iٿb�� 9 9^��?F[
@U���>_� 9 2q��?�丿i�ÿV�� 9�9of�??S�?ff��JY� 9 4of�??S�ff��J��_ 9 :q��?��?i�ÿVS� 9 5P��?ж~��Ѫ�a���8 9�?�丿ǻ��U��e�8�9ϻ�?F[
@\qM�=Z��8 2q��??S�?U���JR��8 4q��??S�U���J��e�8 :�?��?ǻ��UK��8 5ϻ�?F[
�\qM�=��e�8�:P��?ж~?�Ѫ�aD�e�8 6��S?˻���.��e�8 ;��@'�?OW��o<�e�8 7���>�3#��H�����8�;K[
@    �丿2�e�8 8�7��ff&@�7�5 �b�8  ���>�3#@�H��n�e�8 ,    ff&��7�5 ��b�8 <��@'��OW��oĂ�8�8��S?˻@��.b��8 0?Sk?˻��¾-���8 ;|��>�3#���F���l�8�;��@'�?��y�n0�l�8 7˻@    ��~�%�l�8 8�7��ff&@�7�5 �h�8  ���>�3#@��F�l��8 ,    ff&��7�5 ��h�8 <��@'����y�nЂ�8�8PSk?˻@�¾-_�l�8 0@ж~�.Sk�`Ƃ�8 9�Ѫ?F[
@��;T��8 2P��?�丿i�S�T���8�9i�??S�?4�HK�l�8 4i�??S�4�H���8 :P��?��?i�S�TC�l�8 5�Ѫ?F[
���;��l�8�:@ж~?.Sk�`:�l�8 6XW�?F[
@�H��8P�t@8 2���??S�?w���DE�t@8 4��@�丿��׾Qłt@8�9���??S�w���D��
@8 :��@��?��׾Q;�
@8 5XW�?F[
��H��8��
@8�:��@ж~?[��^0�t@8 6��y?˻���F�*��t@8 ; @'�?����l$�
@8 7��>�3#�q�ʽ��
@8�;�3#@    ���t@8 8�7��ff&@�7�5 �p`8  ��>�3#@q�ʽj�t@8 ,    ff&��7�5 ��p`8 < @'������l܂t@8�8��y?˻@��F�*[�
@8 0��@ж~�[��^Ђ
@8 9�3#@'�?�7�5j~ 8 7kf&@    �7�5  8 8�7��ff&@�7�5 �y 8  8�?�3#@�7�5i~ 8 ,    ff&��7�5 ��y 8 <'�?�3#��7�5�~~ 8�;�3#@'���7�5j�~ 8�8�~?˻@�7�5%Y~ 8 0˻@ж~��7�5Y� 8 9��?F[
@�7�53K~ 8 2K[
@�丿�7�5L΂ 8�9?S�??S�?�7�5??� 8 4?S�??S뿽7�5?�~~ 8 :K[
@��?�7�5L2~ 8 5��?F[
��7�53�~~ 8�:˻@ж~?�7�5Y%~ 8 6ж~?˻��7�5%�~~ 8 ;��@�丿���>C�~
�7�9���??S뿘��>9�~t�7 :���??S�?���>9:~
�7 4��@��?���>C-~t�7 5XW�?F[
��H�>.�~t�7�:��@ж~?���>N ~
�7 6��y?˻�	�F>#�~
�7 ; @'�?��>Z~t�7 7��>�3#����=�~t�7�;�3#@    8�?i t�7 8�7��ff&@�7�5 y�7  ��>�3#@~��=f~
�7 ,    ff&��7�5 �y�7 < @'����>Z�~
�7�8��y?˻@	�F>#T~t�7 0��@ж~����>N�~t�7 9XW�?F[
@�H�>.F~
�7 2�7��ff&@�7�5 p?7  ���>�3#@L�F>d~l 7 ,    ff&��7�5 �p@7 <|��>�3#�	�F>�~ 7�;˻@    �~?Y l 7 8��@'����y?N�~l 7�8?Sk?˻@=��>Q~ 7 0@ж~�PSk?D�~l 7 9�Ѫ?F[
@�?*C~l 7 2H��?�丿��S?;�~l 7�9i�??S�??4?36~ 7 4i�??S�?4?3�~l 7 :H��?��?��S?;*~ 7 5�Ѫ?F[
��?*�~ 7�:@ж~?PSk?D~ 7 6?Sk?˻�=��>�~l 7 ;��@'�?��y?N~ 7 7q��??S�?^��?,4~e�6 4�?��?ػ�?3)~e�6 5q��??S�^��?,�~�6 :ϻ�?F[
�~qM?$�~�6�:P��?ж~?�Ѫ?:~�6 6y�S?˻��?�~�6 ;��@'�?XW�?B~�6 7���>�3#��H�>�~e�6�;F[
@    ��?L e�6 8�7��ff&@�7�5 h�6  ���>�3#@�H�>b~�6 ,    ff&��7�5 �h�6 <��@'��XW�?B�~e�6�8��S?˻@�?P~e�6 0P��?ж~��Ѫ?:�~e�6 9ϻ�?F[
@~qM?$A~e�6 2�?�丿ػ�?3�~�6�9?S�?    HS�?? _ 6 8���?'�����?7�_ 6�8���>�3#@���>b~ 6 ,.4?˻@?4?O~ 6 0i�?ж~��i�?1�~_ 6 9^��?F[
@f��?@_ 6 2i��?�丿q��?+�~_ 6�9ff�??S�?of�?%4~ 6 4ff�??S�of�?%�~_ 6 :i��?��?q��?+(~ 6 5^��?F[
�^��?�~_ 6�:i�?ж~?�i�?1~ 6 6.4?˻�?4?� 6 ;���?'�?���?7 6 7w��>�3#����>�~ 6�;�7��ff&@�7�5 b@6      ff&��7�5 �b@6 <^��??S�q��?�~X�5 :mqM?F[
�ϻ�?�~X�5�:ǻ�?��?�?")~&�5 5�Ѫ?ж~?P��?'~X�5 6��?˻���S?�~X�5 ;OW�?'�?��@,~X�5 7�H�>�3#����>�~&�5�;��?    K[
@2 X�5 8�7��ff&@�7�5 \�5  �H�>�3#@���>b~X�5 ,    ff&��7�5 �\�5 <OW�?'����@,�~&�5�8��?˻@��S?P~&�5 0�Ѫ?ж~�P��?'�~&�5 9mqM?F[
@ػ�?A~&�5 2ǻ�?�丿�?"�~X�5�9^��??S�?q��?4~&�5 4��y?'����@ �~, 5�8?Sk?ж~�@�~, 5 9��>˻@PSk?Q~R 5 0��?F[
@�Ѫ?C~, 5 2y�S?�丿P��?�~, 5�9.4??S�?�i�?6~R 5 4.4??S뿈i�?�~, 5 :y�S?��?P��?*~R 5 5��?F[
��Ѫ?�~R 5�:?Sk?ж~?@~R 5 6��>˻�PSk?�~, 5 ;��y?'�?��@ ~R 5 7��F>�3#����>�~R 5�;ж~?    ϻ@% R 5 8�7��ff&@�7�5 U@5  	�F>�3#@���>d~, 5 ,    ff&��7�5 �U@5 <�H�>F[
�XW�?	�~4�4�:��F>˻���y?�~J�4 ;|��>ж~?��@ ~J�4 6���>'�? @~4�4 7���=�3#���>�~4�4�;'�?    �3#@ J�4 8�7��ff&@�7�5 N�4  ���=�3#@��>f~J�4 ,    ff&��7�5 �N�4 <���>'�� @�~J�4�8	�F>˻@��y?T~4�4 0|��>ж~���@�~4�4 9�H�>F[
@XW�?	F~J�4 2���>�丿��@�~J�4�9w��>?S�?���?:~J�4 4w��>?S뿸��?�~4�4 :���>��?��@-~4�4 5    ˻@�~? Y~? 4 0    F[
@��? K~? 4 2    ж~�ϻ@ �? 4 9    �丿F[
@ �~? 4�9    ?S�??S�? ?~? 4 4    ?S�?S�? �~? 4 :    ��?F[
@ 2~? 4 5    F[
���? �~? 4�:    ж~?ϻ@ %? 4 6    ˻��~? �~? 4 ;    '�?�3#@ ? 4 7    �3#�8�? �? 4�;        kf&@  ? 4 8�7��ff&@�7�5 E@4      �3#@8�? i~? 4 ,    ff&��7�5 �E@4 <    '���3#@ �~? 4�8|��ж~?��@� i? 3 6���'�? @�i? 3 7��F�˻���y?��i? 3 ;��ʽ�3#���>��i? 3�;'��    �3#@� i? 3 8�7��ff&@�7�5 s?�3  ��ʽ�3#@��>�fi? 3 ,    ff&��7�5 �s?�3 <���'�� @��i? 3�8��F�˻@��y?�Ti? 3 0|��ж~���@��i? 3 9�H��F[
@XW�?�Fi? 3 2��׾�丿��@��i? 3�9w���?S�?���?�:i? 3 4w���?S뿸��?��i? 3 :��׾��?��@�-i? 3 5�H��F[
�XW�?��i? 3�:?Sk�ж~�@��Y? 2 9y�S��丿H��?��Y? 2�9���F[
@�Ѫ?�CY? 2 2.4�?S�?�i�?�6Y? 2 4.4�?S뿈i�?��Y? 2 :y�S���?H��?�*Y? 2 5���F[
��Ѫ?�Y? 2�:?Sk�ж~?@�Y? 2 6�¾˻�?Sk?�Y? 2 ;��y�'�?��@�Y? 2 7��F��3#����>��Y? 2�;ж~�    ϻ@� Y? 2 8�7��ff&@�7�5 a?�2  	�F��3#@���>�dY? 2 ,    ff&��7�5 �a?�2 <��y�'����@��Y? 2�8�¾˻@PSk?�QY? 2 0��˻���S?�L? 1 ;�H���3#����>��L? 1�;OW��'�?��@�L? 1 7�丿    K[
@� L? 1 8�7��ff&@�7�5 R?�1  �H���3#@���>�bL? 1 ,    ff&��7�5 �R?�1 <OW��'����@��L? 1�8���˻@��S?�PL? 1 0�Ѫ�ж~�P��?��L? 1 9mqM�F[
@ػ�?�AL? 1 2ǻ���丿�?��L? 1�9^���?S�?q��?�4L? 1 4^���?S�q��?��L? 1 :ǻ����?�?�)L? 1 5\qM�F[
�ϻ�?�L? 1�:�Ѫ�ж~?P��?�L? 1 6^���F[
@f��?�@?? 0 2ff��?S�?of�?�4?? 0 4i�ÿ�丿i��?��?? 0�9ff��?S�of�?��?? 0 :i�ÿ��?i��?�(?? 0 5U���F[
�^��?��?? 0�:iٿж~?�i�?�?? 0 6.4�˻�?4?�?? 0 ;���'�?���?�?? 0 7w����3#����>�?? 0�;?S�    ?S�?� ?? 0 8�7��ff&@�7�5 E?�0  �����3#@���>�b?? 0 ,    ff&��7�5 �E?�0 <���'�����?��?? 0�8.4�˻@?4?�O?? 0 0iٿж~��i�?��?? 0 9���'�?OW�?�2? . 7F[
�    ��?� 2? . 8�7��ff&@�7�5 9? /  ��׾�3#@�H�>�b2? . ,    ff&��7�5 �9? / <��׾�3#��H�>�2? .�;���'��OW�?��2? .�8y�S�˻@��?�P2? . 0H���ж~��Ѫ?��2? . 9ǻ��F[
@mqM?�A2? . 2��丿ǻ�?��2? .�9i�ÿ?S�?^��?�42? . 4i�ÿ?S�^��?��2? . :���?ǻ�?�)2? . 5ǻ��F[
�mqM?ܿ2? .�:H���ж~?�Ѫ?�2? . 6y�S�˻���?�2? . ;H����丿y�S?��%? ,�9iٿ?S�?4?��%? , :iٿ?S�??4?�6%? , 4H�����?y�S?�*%? , 5�Ѫ�F[
���?ֽ%? ,�:�ж~?PSk?�%? , 6?Sk�˻�=��>�%? , ;���'�?��y?�%? , 7|���3#�	�F>�%? ,�;˻�    ж~?� %? , 8�7��ff&@�7�5 ,? -  |���3#@	�F>�d%? , ,    ff&��7�5 �,? - <���'����y?��%? ,�8?Sk�˻@=��>�Q%? , 0�ж~�PSk?��%? , 9�Ѫ�F[
@��?�C%? , 2    ff&��7�5 �? * <�����3#����=�? (�;�3#�    '�?� ? ( 8 �'����>��? (�8����3#@~��=�f? ( ,��y�˻@	�F>�T? ( 0���ж~����>��? ( 9OW��F[
@�H�>�F? ( 2����丿���>��? (�9���?S�?���>�:? ( 4���?S뿘��>��? ( :�����?���>�-? ( 5OW��F[
��H�>Һ? (�:���ж~?���>� ? ( 6��y�˻�	�F>ݬ? ( ; �'�?��>�? ( 7�7��ff&@�7�5 ? *  7S�?S�    ��<   :�丿F[
��7�5͵<  �:B[
���?    �2B   5˻�ж~?�7�5�%A   6ж~�˻��7�5ۧ	=   ;�3#�'�?    � @   7'���3#��7�5�
>  �;ff&�        �  ?   8�7��ff&@�7�5 ? $  '���3#@�7�5�i
@   ,    ff&��7�5 �? $ <�3#�'��    �� >  �8ж~�˻@�7�5�Y	A   0˻�ж~��7�5��=   9�丿F[
@�7�5�KB   2B[
��丿    ��<  �97S�?S�?    �?B   4'���3#@�7�5�i�> < ,ж~�˻@�7�5�Y�= < 0����3#@q�ʽ�j�?�; ,��y�˻@��F��[�?�; 0�3#�'��    �� @ <�8˻�ж~��7�5���A < 9 �'���������?�;�8���ж~�[�ﾢ��?�; 9�丿F[
@�7�5�K�< < 2OW��F[
@�H���P�?�; 2B[
��丿    ���B <�9����丿��׾���?�;�97S�?S�?    �?�< < 4���?S�?w����E�?�; 47S�?S�    ���B < :���?S�w������?�; :B[
���?    �2�< < 5�����?��׾�;�?�; 5�丿F[
��7�5͵�B <�:OW��F[
��H��Ȱ�?�;�:˻�ж~?�7�5�%�= < 6���ж~?[�ﾢ0�?�; 6ж~�˻��7�5ۧ�A < ;��y�˻���F�֥�?�; ;�3#�'�?    � > < 7 �'�?�����$�?�; 7'���3#��7�5��@ <�;�����3#�q�ʽ��?�;�;ff&�        �  ? < 8�3#�    ����?�; 8�7��ff&@�7�5 �?�;      ff&��7�5 ��?�; <@�����?i�S��C�?�; 5�ж~?.Sk��:�?�; 6�Ѫ�F[
���Ŭ�?�;�:.Sk�˻���¾ӡ�?�; ;���'�?��y��0�?�; 7|���3#���F���?�;�;ǻ�    ��~��%�?�; 8�7��ff&@�7�5 �?�;  |���3#@��F��l�?�; ,    ff&��7�5 ��?�; <���'����y����?�;�8?Sk�˻@��¾�_�?�; 0�ж~�.Sk����?�; 9�Ѫ�F[
@���T�?�; 2@����丿i�S����?�;�9iٿ?S�?4��K�?�; 4iٿ?S�4����?�; :���'��GW�����?@;�8H���ж~��Ѫ����?@; 9y�S�˻@���b�?@; 0ǻ��F[
@\qM��Z�?@; 2��丿ǻ�����?@;�9i�ÿ?S�?U����R�?@; 4i�ÿ?S�U������?@; :���?ǻ���K�?@; 5ǻ��F[
�\qM�æ�?@;�:H���ж~?�Ѫ��D�?@; 6y�S�˻���Ҟ�?@; ;���'�?GW���<�?@; 7��׾�3#��H����?@;�;B[
�    �丿�2�?@; 8�7��ff&@�7�5 �?`;  ��׾�3#@�H���n�?@; ,    ff&��7�5 ��?`; <U���F[
�M���¡�? ;�:.4�˻�4�љ�? ; ;iٿж~?wiٿ�M�? ; 6���'�?��濑G�? ; 7w����3#�U�����? ;�;7S�    7S뿁?�? ; 8�7��ff&@�7�5 �? ;  w����3#@w����p�? ; ,    ff&��7�5 ��? ; <���'����濑��? ;�8.4�˻@4��g�? ; 0iٿж~�wiٿ���? ; 9U���F[
@U����_�? ; 2a�ÿ�丿a�ÿ���? ;�9ff��?S�?^f���Y�? ; 4ff��?S�^f�����? ; :a�ÿ��?a�ÿ�S�? ; 5��˻@i�S��l�?�: 0\qM�F[
@ǻ���f�?�: 2�Ѫ�ж~�@������?�: 9�����丿濫��?�:�9U���?S�?i�ÿ�a�?�: 4U���?S�i�ÿ���?�: :������?濫\�?�: 5\qM�F[
�����Ú�?�:�:�Ѫ�ж~?@����W�?�: 6��˻�i�S�Ҕ�?�: ;GW��'�?����R�?�: 7�H���3#�|�׾䍴?�:�;�丿    B[
��L�?�: 8�7��ff&@�7�5 �?�:  �H���3#@��׾�s�?�: ,    ff&��7�5 ��?�: <GW��'��������?�:�8?Sk�ж~?���b�?�: 6��y�'�?����^�?�: 7�¾˻�.Sk�ӏ�?�: ;��F��3#�[��执?�:�;��~�    û��Y�?�: 8�7��ff&@�7�5 �?�:  ��F��3#@[���w�?�: ,    ff&��7�5 ��?�: <��y�'��������?�:�8�¾˻@.Sk��q�?�: 0?Sk�ж~������?�: 9��F[
@�Ѫ��m�?�: 2i�S��丿@������?�:�9.4�?S�?wiٿ�i�?�: 4.4�?S�wiٿ���?�: :i�S���?@����f�?�: 5��F[
��Ѫ�œ�?�:�:|��ж~�������?@: 9|�׾�丿������?@:�9�H��F[
@GW���u�?@: 2w���?S�?��濼s�?@: 4w���?S뿧�濼��?@: :|�׾��?����q�?@: 5�H��F[
�GW��ȋ�?@:�:|��ж~?����o�?@: 6��F�˻���y�ֈ�?@: ;����'�? ��l�?@: 7��ʽ�3#�����膗?@:�;��    �3#��i�?@: 8�7��ff&@�7�5 �?`:  ��ʽ�3#@�����z�?@: ,    ff&��7�5 ��?`: <����'�� ����?@:�8��F�˻@��y��x�?@: 0�7��ff&@�7�5 �? :      ff&��7�5 ��? : <      vertex_count    /        array_index_data    �                	 
          	  
 
                                                                        !   " "  #   ! !  $   # #  %   $ $  & ' 
 (  ) %   & &  * 
  ( (  +   * *  ,   + +  -   , ,  .   - -  /   . .  0   / /      0 0  " * , 1 1 , 2 + - 3 3 - 4 , . 2 2 . 5 - / 4 4 / 6 . 0 5 5 0 7 /   6 6   8 0 " 7 7 " 9   ! 8 8 ! : " # 9 9 # ; ! $ : : $ < # % ; ; % = $ & < < & > ? ( @ % A = & * > > * 1 ( + @ @ + 3 9 ; B B ; C : < D D < E ; = C C = F < > E E > G H @ I = J F > 1 G G 1 K @ 3 I I 3 L 1 2 K K 2 M 3 4 L L 4 N 2 5 M M 5 O 4 6 N N 6 P 5 7 O O 7 Q 6 8 P P 8 R 7 9 Q Q 9 B 8 : R R : D M O S S O T N P U U P V O Q T T Q W P R V V R X Q B W W B Y R D X X D Z B C Y Y C [ D E Z Z E \ C F [ [ F ] E G \ \ G ^ _ I ` F a ] G K ^ ^ K b I L ` ` L c K M b b M S L N c c N U [ ] d d ] e \ ^ f f ^ g h ` i ] j e ^ b g g b k ` c i i c l b S k k S m c U l l U n S T m m T o U V n n V p T W o o W q V X p p X r W Y q q Y s X Z r r Z t Y [ s s [ d Z \ t t \ f n p u u p v o q w w q x p r v v r y q s x x s z r t y y t { s d z z d | t f { { f } d e | | e ~ f g } } g  � i � e � ~ g k   k � i l � � l � k m � � m � l n � � n u m o � � o w }  � �  � � � � ~ � �  � � � � � � � � � � � � � � � � � � u � � u � � w � � w � u v � � v � w x � � x � v y � � y � x z � � z � y { � � { � z | � � | � { } � � } � | ~ � � ~ � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � �  � � � � � � �   � � � � � � � � � � � � � � � 	� � � 
� � 		� � � 

� � � � � � � � � � � � 		

	
� � � � � � � �   �   !!"  #$%&"##'%%('')((*))+**,++-,,.--/..//!)+00+1*,22,3+-11-4,.33.5-/44/6.557/!66!8 77 9!"88": #99#;<%=">:#';;'?%(==(@')??)0(*@@*28:AA:B9;CC;DE=F:GB;?DD?H=@FF@I?0HH0J@2II2K01JJ1L23KK3M14LL4N35MM5O46NN6P57OO7Q68PP8A79QQ9CKMRRMSLNTTNUMOSSOVNPUUPWOQVVQXPAWWAYQCXXCZABYYB[CDZZD\]F^B_[DH\\H`FI^^IaHJ``JbIKaaKRJLbbLTZ\cc\de^f[gh\`dd`i^affaj`biibkaRjjRlbTkkTmRSllSnTUmmUoSVnnVpUWooWqVXppXrWYqqYsXZrrZcY[ss[hmottounpvvpwoquuqxprwwryqsxxszrcyyc{shzzh|cd{{d}~fh�|di}}i�fjj�ik��k�jl��l�km��mtln��nv|��}�����������������������t��t��v��v�tu��u�vw��w�ux��x�wy��y�xz��z�y{��{�z|��|�{}��}�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� �������  ���������������	���
������

��

��
���������������  �  !  "!!#""$##%$$&%%'()*&''+)),++,,$&    & %'  ' -)	 &. '+  + ),	 	 , +   ,              !  !  "  " !#  # "$  $  #%  %       index_count    @     
   primitive             format    }!       aabb    ff&�ff&�ff&�jf�@ff�@hf�@      skeleton_aabb              blend_shape_data           	   material                name       Материал RSRC  [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/gorohus.obj-de0c4d43aee11556eb59a7b732c09264.mesh"

[deps]

files=[ "res://.import/gorohus.obj-de0c4d43aee11556eb59a7b732c09264.mesh" ]

source_file="res://gorohus.obj"
dest_files=[ "res://.import/gorohus.obj-de0c4d43aee11556eb59a7b732c09264.mesh", "res://.import/gorohus.obj-de0c4d43aee11556eb59a7b732c09264.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
octahedral_compression=true
optimize_mesh_flags=4286
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              RSRC                 
   ArrayMesh                                                                 D      resource_local_to_scene    resource_name    render_priority 
   next_pass    flags_transparent    flags_use_shadow_to_opacity    flags_unshaded    flags_vertex_lighting    flags_no_depth_test    flags_use_point_size    flags_world_triplanar    flags_fixed_size    flags_albedo_tex_force_srgb    flags_do_not_receive_shadows    flags_disable_ambient_light    flags_ensure_correct_normals    vertex_color_use_as_albedo    vertex_color_is_srgb    params_diffuse_mode    params_specular_mode    params_blend_mode    params_cull_mode    params_depth_draw_mode    params_line_width    params_point_size    params_billboard_mode    params_billboard_keep_scale    params_grow    params_use_alpha_scissor    albedo_color    albedo_texture 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled    normal_enabled    rim_enabled    clearcoat_enabled    anisotropy_enabled    ao_enabled    depth_enabled    subsurf_scatter_enabled    transmission_enabled    refraction_enabled    detail_enabled 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    proximity_fade_enable    distance_fade_mode    script    lightmap_size_hint    blend_shape_mode    custom_aabb    surfaces/0    surfaces/1    surfaces/2    surfaces/3    surfaces/4        
   local://1 �      
   local://2 #      
   local://3 �      
   local://4 �      
   local://5 :      
   local://6 �         SpatialMaterial             Материал.009       �̋>r5>�آ=  �?         ?   SpatialMaterial             Материал.010       ޫ�>ޫ�>ޫ�>  �?         ?   SpatialMaterial             Материал.011       ޫ�>ޫ�>ޫ�>  �?         ?   SpatialMaterial             Материал.012       ޫ�>ޫ�>ޫ�>  �?         ?   SpatialMaterial             Материал.013       ޫ�>ޫ�>ޫ�>  �?         ?
   ArrayMesh    ?               array_data    �    ���КA  �?�   9 <  ��/�V�  �?�   6 <  ���КA  ���   9 :  ��/�V�  ���   6 :  ���КA  ��  9 :  ��/�V�  ��  6 :  �?�КA  ��  9 8  �?/�V�  ��  6 8  �?�КA  ��   9 8  �?/�V�  ��   6 8  �?�КA  �?   9 4  �?/�V�  �?   6 4  �?�КA  �?    9 4  �?/�V�  �?    6 4  ���КA  �?    9    ��/�V�  �?    6    �?/�V�  �� �? 6 8  ��/�V�  �� �? 0 8  �?/�V�  �? �? 6 4  ��/�V�  �? �? 0 4  ���КA  �� �? ; 8  �?�КA  �� �? 9 8  ���КA  �? �? ; 4  �?�КA  �? �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb      ��/�V�  ��   @ѡ�A*  @      skeleton_aabb              blend_shape_data           	   material                name       Материал @               array_data    �  33��shB��<@�   9 <33��4^zA��<@�   6 <33��shB33s��   9 :33��4^zA33s��   6 :33��shB33s�  9 :33��4^zA33s�  6 :33�>shB33s�  9 833�>4^zA33s�  6 833�>shB33s�   9 833�>4^zA33s�   6 833�>shB��<@   9 433�>4^zA��<@   6 433�>shB��<@    9 433�>4^zA��<@    6 433��shB��<@    9  33��4^zA��<@    6  33�>4^zA33s� �? 6 833��4^zA33s� �? 0 833�>4^zA��<@ �? 6 433��4^zA��<@ �? 0 433��shB33s� �? ; 833�>shB33s� �? 9 833��shB��<@ �? ; 433�>shB��<@ �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    33��4^zA33s�333?ҡ�Aęy@      skeleton_aabb              blend_shape_data           	   material                name       Материал A               array_data    �  )퍿jM�AΪ�>�   9 <)퍿���AΪ�>�   6 <)퍿jM�AΪϾ�   9 :)퍿���AΪϾ�   6 :)퍿jM�AΪϾ  9 :)퍿���AΪϾ  6 :)�?jM�AΪϾ  9 8)�?���AΪϾ  6 8)�?jM�AΪϾ   9 8)�?���AΪϾ   6 8)�?jM�AΪ�>   9 4)�?���AΪ�>   6 4)�?jM�AΪ�>    9 4)�?���AΪ�>    6 4)퍿jM�AΪ�>    9  )퍿���AΪ�>    6  )�?���AΪϾ �? 6 8)퍿���AΪϾ �? 0 8)�?���AΪ�> �? 6 4)퍿���AΪ�> �? 0 4)퍿jM�AΪϾ �? ; 8)�?jM�AΪϾ �? 9 8)퍿jM�AΪ�> �? ; 4)�?jM�AΪ�> �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    )퍿���AΪϾ)�@ [S?v�O?      skeleton_aabb              blend_shape_data           	   material                name       Материал B               array_data    �  )퍿ԚAΪ�>�   9 <)퍿X��@Ϊ�>�   6 <)퍿ԚAΪϾ�   9 :)퍿X��@ΪϾ�   6 :)퍿ԚAΪϾ  9 :)퍿X��@ΪϾ  6 :)�?ԚAΪϾ  9 8)�?X��@ΪϾ  6 8)�?ԚAΪϾ   9 8)�?X��@ΪϾ   6 8)�?ԚAΪ�>   9 4)�?X��@Ϊ�>   6 4)�?ԚAΪ�>    9 4)�?X��@Ϊ�>    6 4)퍿ԚAΪ�>    9  )퍿X��@Ϊ�>    6  )�?X��@ΪϾ �? 6 8)퍿X��@ΪϾ �? 0 8)�?X��@Ϊ�> �? 6 4)퍿X��@Ϊ�> �? 0 4)퍿ԚAΪϾ �? ; 8)�?ԚAΪϾ �? 9 8)퍿ԚAΪ�> �? ; 4)�?ԚAΪ�> �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    )퍿X��@ΪϾ)�@ [S?v�O?      skeleton_aabb              blend_shape_data           	   material                name       Материал C               array_data    �  )퍿�R�Ϊ�>�   9 <)퍿�ִ�Ϊ�>�   6 <)퍿�R�ΪϾ�   9 :)퍿�ִ�ΪϾ�   6 :)퍿�R�ΪϾ  9 :)퍿�ִ�ΪϾ  6 :)�?�R�ΪϾ  9 8)�?�ִ�ΪϾ  6 8)�?�R�ΪϾ   9 8)�?�ִ�ΪϾ   6 8)�?�R�Ϊ�>   9 4)�?�ִ�Ϊ�>   6 4)�?�R�Ϊ�>    9 4)�?�ִ�Ϊ�>    6 4)퍿�R�Ϊ�>    9  )퍿�ִ�Ϊ�>    6  )�?�ִ�ΪϾ �? 6 8)퍿�ִ�ΪϾ �? 0 8)�?�ִ�Ϊ�> �? 6 4)퍿�ִ�Ϊ�> �? 0 4)퍿�R�ΪϾ �? ; 8)�?�R�ΪϾ �? 9 8)퍿�R�Ϊ�> �? ; 4)�?�R�Ϊ�> �? 9 4      vertex_count             array_index_data    H                 	 
 
 	                          index_count    $      
   primitive             format    }!       aabb    )퍿�ִ�ΪϾ)�@-[S?v�O?      skeleton_aabb              blend_shape_data           	   material                name       Материал RSRC          [remap]

importer="wavefront_obj"
type="Mesh"
path="res://.import/knife.obj-5f78ea6a5bd2c0ffa559e3b4143dd0af.mesh"

[deps]

files=[ "res://.import/knife.obj-5f78ea6a5bd2c0ffa559e3b4143dd0af.mesh" ]

source_file="res://knife.obj"
dest_files=[ "res://.import/knife.obj-5f78ea6a5bd2c0ffa559e3b4143dd0af.mesh", "res://.import/knife.obj-5f78ea6a5bd2c0ffa559e3b4143dd0af.mesh" ]

[params]

generate_tangents=true
scale_mesh=Vector3( 1, 1, 1 )
offset_mesh=Vector3( 0, 0, 0 )
octahedral_compression=true
optimize_mesh_flags=4286
       GDSC            T      ���׶���   ����̶��   ��������������������Ķ��   ����   ���������������Ŷ���   �����׶�   �����ڶ�   ��¶   ����������ض   ̶��   ����Ҷ��   ϶��   ����������Ӷ   ����Ӷ��      game         <           ffffff"@        ����Mb`?                                     #      +      2   	   8   
   F      L      R      3YY;�  �  T�  PQY0�  P�  QV�  &�  T�  V�  �  T�	  �  T�
  �  &�  T�	  �  V�  �  T�	  �  �  �  T�%  PQ�  �  T�  �  T�  P�  R�  Q�  �  T�  �  �  �  T�
  �  Y`       GDSC            U      ���׶���   ���۶���   ��������������������Ķ��   ����   ���������������Ŷ���   �����׶�   �����ڶ�   ��¶   ����������ض   ̶��   ����Ҷ��   ϶��   ����������Ӷ   ����Ӷ��      game         <           ffffff"@        ����Mb`?                                           $      ,   	   3   
   9      G      M      S      3YYY;�  �  T�  PQY0�  P�  QV�  &�  T�  V�  �  T�	  �  T�
  �  &�  T�	  �  V�  �  T�	  �  �  �  T�%  PQ�  �  T�  �  T�  P�  R�  Q�  �  T�  �  �  �  T�
  �  Y`              GDSC         $   �      ���������϶�   ���������������Ŷ���   �����׶�   �����ڶ�   ��¶   ����������ض   ϶��   ����Ҷ��   �����Ķ�   �����¶�   ����¶��   ��������������������޶��   ���������Ҷ�   ����������������������Ҷ   ���϶���   ����������������������Ҷ���      game  fffff�N@     A            end                                            "      .   	   5   
   A      I      P      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      t       z   !   {   "   �   #   �   $   3YYYY0�  P�  QV�  &�  T�  V�  &�  T�  	�  �  T�  �  V�  �  T�  �  T�  �  T�  Y0�	  P�
  QV�  &�
  4�  �
  T�  PQV�  &�  T�  V�  �  T�  �  �  �  T�  �  T�  �  T�  YYYYYYYYYYYYYYYYYY0�  P�  QV�  �  T�  �  YY0�  P�  QV�  �  T�  �  Y`          GDSC         8   �     ������ڶ   �������Ŷ���   �����׶�   �����ڶ�   ��¶   ��������Ķ��   ����������¶   ���¶���   ����Ӷ��   �����������Ŷ���   ��������¶��   ����Ķ��   ���¶���   ������Ӷ   �����϶�   ¶��   ����Ķ��   ����   ������������Ӷ��   �����������¶���   ��������Ҷ��   ����¶��   ���������Ӷ�   �����������������Ҷ�   ����Ҷ��   �������Ӷ���   �������������������Ӷ���   �����������������������Ҷ���      start      
   СТАРТ               ЛИДЕРЫ         �������?      game       -        end       ЗАНОВО             dark        333333�?      timeout   �������?             	                  !      *      ?      G   	   P   
   e      u      ~      �      �      �      �      �      �      �      �      �      �      �                                $     *     1      8  !   >  "   ?  #   E  $   M  %   S  &   [  '   a  (   j  )   q  *   x  +     ,   �  -   �  .   �  /   �  0   �  1   �  2   �  3   �  4   �  5   �  6   �  7   �  8   3Y0�  P�  QV�  &�  T�  V�  W�  �  T�  �  �  W�  T�  �  �  W�  �	  T�  �  �  W�
  T�  W�
  T�  �  P�  R�  R�  R�  Q�  '�  T�  �  V�  W�  �  T�  �  �  W�  T�  �>  P�  T�  Q�  �>  P�  T�  Q�  W�
  T�  �  P�  R�  R�  R�  Q�  W�  �	  T�  �  �  '�  T�  �  V�  W�  �  T�  �	  �  W�  �	  T�  �  �  W�
  T�  �
  �  W�  T�  �>  P�  T�  Q�  �>  P�  T�  Q�  '�  T�  �  V�  W�  �  T�  �	  �  W�  �	  T�  �  �  W�
  T�  �  �  W�  T�  �>  P�  T�  Q�  �>  P�  T�  Q�  W�
  T�  W�
  T�  �  P�  R�  R�  R�  QYY0�  PQV�  ;�  �  T�  PQ�  �  T�  P�  Q�  �  T�  P�  Q�  T�  P�  Q�  �  T�  PQ�  AP�  R�  Q�  W�
  T�  �
  �  �  T�  PQYY0�  PQV�  &�  T�  V�  �  T�  �  �  '�  T�  �  V�  �  T�  �  �  ;�  �  T�  PQ�  �  T�  P�  Q�  �  T�  P�  Q�  T�  P�  Q�  �  T�  PQ�  AP�  R�  Q�  �  T�  �  �  T�  �  �  �  T�  �  �  �  T�  PQY�  �  PQT�  PQYY0�  PQV�  &�  T�  �  T�  �  V�  -Y`            GDSC            @      ���Ӷ���   ��¶   ����Ӷ��   ���¶���   ����Ҷ��   �����Ķ�   �嶶   ���Ӷ���   �嶶   ����������Ӷ   ���������¶�   ���ڶ���      start            �z�G��?         
   JavaScript                                        
                     	      
                '      0      8      ;      >      3YYYY;�  Y;�  �  Y;�  �  Y;�  �  Y;�  �  YYY0�  P�  QV�  &�  T�	  P�  QV�  .�
  T�  P�  Q�  (V�  .�  Y`          wOFF     X$     ��                       DSIG  X         GDEF  G(   b   �

GPOS  G�  �  +��b�[GSUB  VD  �  \� ��OS/2  �   N   `kacmap  �    �Aa0cvt   �   1   �y�fpgm  �    �W�glyf  �  1�  L�_�ןhead  �   6   6;�Mhhea  �       $�mhmtx  H  t  �!h%loca  �  �  �^3@maxp  �        ��name  Bt  �  r���post  C�  -  Y=��prep  �   �   �؟Yr      ���_<� �    ��c    �-�D�~�3U�          x�c`d``~񟍁���_���,�@� ��1    � �  G    / �  8�  x�c`frf���������������̀|6`�g@���~�?�3��/�����/�0;X%+�A ��� P��  x�E�MH�Q��{�T��`���,�`���c��HL?#e"я �Hf;ɢ$�EB�r--ڵ1
jm#pS���"�,*+��^?m�r�w��y�{��t�NJ�"�M*�s*XEyۣ�/*g/�׬
�� ���N��R���O�ߤ�-�/��r�䔱C��)z'�Ni;CO��O-=ʡO�nQ��4�OɻA�=>`����>�w����������.a�qޝ�ba�z=����~�:�&�!5�vz��q��P�m��P�y�6�	��̺�_TI�j�������w�|;N~w���gVAm���;�v?��va�*�:9o� 6�ݛ���B�����ب��F�Z������0w
z�U��pV�w_�>��T=/-OF���JW�Z=���ă����6�<?�Y.K+ZFm��;h[I4}�ߝ�%�J?8M�_Q�ϒ�U�rV�^0��;Bn��(�[��.�����}�.h���mۑ���-�ݸ�pEK{�t=K�?�����Xcv?�h����ee��_q���ϱ:D.e����W�Ft�3<���	�׼�av�C� �E�S�o��O4`���f�'�WS`,�T��W�~ ;�0������Oķ��g㛩����r\Wy�F���,�x���?/Ca�綇k�PM�	r�f&!b��D�JB�Y�E���.�nB�4*���>���7|���x�t��<��~'9 " �6	����ٳ���Ѓf���g��nP��ԝ��@��"r��&h��h�2���������w\�Z:�V邊�q5�>D�މ����aÿD	��|7��������qwrW���s�Ǘwy�Wy�G�ɃT�^<�HY
�%�_ßkf�l�u�jV̲Y2�&k���.�s}��t^�N餎���J���������[�����}t�   x��W�o��_R�}��l���[(筅�	�ӝ���'��!e�!�'�J��I[�i�Vu��ؾ����_�<��c�W����>�%����������k�y��=�ǳ����_����o���WO������G?����}������8��ǿ�w��V}t��p�ѿy�7�^_[]��{�g�F}�ʛ���l7�̳��D�ye�R���j��pnD��f�]v\7v��BU���c�M1D`�B��@�olE�+Mfx2�)��)�3�T/ t
���)�r��:!�X_�q�f<�C'�t���g���B��h�y���a�A�5�Y�:$��6��>�V�ۊOv�p3�S��/��O�8WO���t����7#x�J�
�����9�.d�l)֋�<�^���6c��0ze[v'Y��q�B��	KH8l��ʼ�k��9
;�ԒFh8�,4�6�Y,;��m�ZQ�lPJ�N�K����p�Wp�@i�[f[�i�y�%�L�(�����YkA�W�|޺�^��Y��!sS����:GZ�f�y N�Lq���N	�>3�['3���n1��_p,�se���7q�V��[7��M����k"�M�<�{��<E�Ķ#���w�n�nw�e��X���?	�	9
4�^D��x���%`H�U���<Q�$@��{�GQ�7���3^n�<���Vi���^RM�4�|�>4�
Q�bIY��׻��/��L��a?����)d�P��$���Ė�/�-L���涎��� I�\�e��%?�R��]�,Hby9>5�˥
�,G7���D �"�cxӅ�ݭ-3܊dk,�C�b��bGƙ�8��4ve�|R���dS�{�>���12�����;�:�k�N�-��k�;��X� �\>�MȰ�����:�ı�Z�l�jY M��g�S�Go��obE�|���U�8��8����`�%o�EA=�:��*�s��T�*{@���b{��D����&�ypF$J�5�jۣ騃>Ob�$�"{\��2�|'�ࢲ�7������2J GU����E�V����dc	ֱA��#��ʂ�^�響�J?�G�H�������zl�j�4�+�,��}	ǡZ��ID���l+{�EɯJT�{(�%?��`[�m��z�SD29a���c�#F���W����w���a`�kZ*,یT�R��/e�dD�����Q�E�+{�po��rh4W�0*�G�_���d��0`t٥mѝ��4���Z��=U�Ъ�J�9	�a�3��5@�xA�I
��m�9��S��A!�:����Q#Ao���VD#�hi��*D|�+
M�5���)�F7t�j��f�T>���{G��1�9�x(fh�ϋ�,�n�Q�`lFU�
�QQQ��}ڸ�lnu�GVq5���=7^]3Ձ���	�Cv�)&V,�0��XQ6�iO���U����ܶ���T�ڳ-z�%c�Q��l��FG��^�^��T��Q�)�:d|�Ql���)}�r�:�d�hrJ,kq{&6���8��u����j�j���Q5�k?�j�,КY�5�H^3uX?��J[~��Ж��0�*��ZX	�|S����1D�U��l^�6xߘ�n�؆5oÅvt|�n����L��b��ν F�Go��E&5�,m����x����D1F��J$(�Z8��24��w-j�0�\̭�_0�����lN�?��#@�>\�X�G�}��z���y�F�<;��H�FG5;t~���N�>�w�������)�h��i�e�}uR�����.ƞ��}`�S��N�,�˾K�C���(��Aw�V���4�|笎��6�]ڪ8q�|]�$<�i�됾�\�Yj�NǸ�6���k�2$�{���]s�ƸW�0�Rec��;���/�$�E\4�3�ނ&4�x�/�hϐ����o�r} 'Ѝ���4�7�`�~��i<���X<q���
���P��EI��\,%�S)�&u;2_"Y�st2�SL����v��(�����st]�j�z��Kh����S�[�Q�YwL��i��_2a���B��+�p?t�OIqa�w�b-��$K��0h�   x�Uƻ�@@��͊����v��l��q�Ǆ§�Z���Hl�MN�;n��*��
s�PSΚ��Q�1�9㘁��BI)K6����S�p��#y]*��{/h���������BL|Gؗ�������<�m�j�,Xk��s�Y&%x�c:��\`��������7�o��b���UXİ��`0 ��         &2~�E���
0M]o����+��+D����+G�5z��$i�����	"	E	~	�	�
1
�
�
�
�9[~�����?���6a���+<��[|��"<j���%Z���\�y��7_����2My�����9AV���#EX`���������LTu���Q�DL���+3h���<g�������&Go��� M�� dl�������  ' @ Z j ~ � �!H!k!�"
"c"�"�"�"�##K#r#�#�#�#�$$i$�$�$�%%4%R%Z%b%j%r%z%�%�%�%�%�%�%�%�%�%�%�%�&~x��|	`յ��+iF�jI�7ɖmٖ��$/�%o�w�{,o�G���&a+M�ʃ��R�(�([�{���>J��%t��~�kx(�<�Ͻ3�������i�{�=�,�=�\1,[{GV��e�ifs�I�&u�ر]7��X�۵��j���'F�5�S /���5���-�����s���,�177{<������&���g�x����s��+�tI/#���}6���w�-�kk�q,���0�}�+���\8ʹJG�5��r�5���l@l�;�Y���W�����B���f�s6r�J&�Q8iRʐR��8]Quqi��m1kk�e^���#ls7��k5HUªJv6�@�4ɔ&�M��+5f=�/de]	V�Ԩ�:���h�Ŷ`ѩ|�^��+ujuQ.Rh,c�v��_U�k�Po���.*t�;��Z]Q4���VaRa�u9������|7g0-o2;lǺ\,�A��L���y�e:�L������\�B�7h�������<7�F�d�s�ZuN�Ef�י��w�-�������w�'�iF���cHc�ȌL$�2�U�!��V,�̉�.Cj��,ȯ���%j��V�t擋|'���4��Q5�Uɨ���|C����n���)a���� Y�#/2*��BWX/dP󐙉��,ɏ��'�5xyG����s��� ���MT�3�u�1��b\��9�����F�q������o�>�0�)];�2�W�Wx�Ş�]g7�ٲ�b�1��X-9�_���l27//���������y�l<�O�X��WA`��f�*%ٲ�ё��������¾`����iN��v,�s�=�HeK:��oܢݻG�26��5���&[M���ݦ.c��SU\]`b`�j@o�@ou0oE��	2�5�vx�nVWT䶳&��̚���H�xT􌉜�g�f2�dV�Z��FFi��YG �/��\;�m���W>���|��*��B������Ao|U탯���m�q�7��	�����p����j��zgk���|5��gd�g�]�#�4�`�L�i��tΤ�r'���F:YZ���B3
��%��̋�|h�V8\@u9�-��hc2��8{ ȳ�,�5*�9tI��#��ަ���Q�����G=MݺO�v�����y ����W�y]��-���1��i�=5ޡZ���>Q��T�Ķa�p������"�]"�\�[�l+�	��0��V�����y�8\�'����y�óƣz�̱�!�a<��]O��?�3>޳���{�c7^��{�ر7g�l��Y�%��1�x����X|�4pf�/ǎ�17�Ə�1G��@K�v�LϘ��������Q�Z8W���x.h���˱��G�Q�)��?���_�m��n�ᆆag���d��\f4Ж��'5f�,�z�Δ���A]x�m�8u
�o���~4I���>�|��	�Q>D�����P�����1���(N������"0��A���H:���f���U���<�e��d���f1�Z:
�#�b�s� ���|�i�=�����M ��g��K�=�)���l�cm���%�����Ů������`M͠������;v�H�煎CÉC��Ç:�8
अQ39QN�d*�V% ��>y�l��7���B�=�U�9���l��K�ǔE��j���veB�@���/����.﯐�se)����E��(��v1��Ȗ�p�I�s���N�v�8�ۿ�����A�$J�;���6j+)�&5�D�Z���+t	V�P��~=��D}=ĮR��gU�82яgф�
���|̾��h�������e�������P=J�GC���@ ��̄Z�:�D�7�Ԕ��L��g�)_�LAT��2���$r���� ާ��/�# 3V�Lƛ�o� ��6]���XBO	�tJ�"Z$r����6Kg�l��5��DI	W�ȓ�7iF���d|�%���:,e�2.����D���Ծd��Ã���-��6����Q��=ݱ=m0Hp��}�������0�
��tX�{T���X8��D"A���Ek�C��lXt��p����+;\u�~�Y���욜�B�����ֺ������;j��#�##�#d��pz��÷99�QvR?���e֗���3�<NR�����g@�]ϔF�:]Y���u%r�$/�oTP�����cJ��ȋ��h����@M0���{Gk�����֖�ޖ��cchj2Zh�χBSk"�<��M7VĴzB�O��k���h����p$��.q�$��(��
eF~ֹ�T�P|	�쨬���W�Uݻ�:���"~�۸��+�[��p�p��-jݰ��-8�/���r��6��Yd&���7��I9C�&5��
�Ua�z!�N'�{6���]_'��E������*�,<u�B0�&8p��F�J�	�Չ�������]���Y�:�J���Ks��3)Z�n��I��8��)�jU�e.�*i4	���H@�1���7q�VG���������,m����l>��v�����Җb_�6�N6���ynG�9g~�����y��|��Ę@� ��϶8g��lNt����0^\�{�#c����@E�#�E�%>t}C|� �.������ɖ���m��Ã����=�P���)�.-����}~�s�w,F�K����koo�Q��o���hz�m�閚�1ߦ��M���yW�H��M��[f�n�(�5�Z����� ��?F�X��E���L�P�X�J�%�.s��8p���L���"�څ���E�k��%|z�p̀�Bk	h����)���PYg
)qy�Sn���v�tI*]a���"9Վ�t��{��L���+'�]]AK |�hj*�<�ŧ�S���Yx�h��_�ކ�K�#���!HYh�6��*R�C�6N�D��'L���	*;>=}�����[ww�v��{��E[+��C=w߶m'�v��"]���w����9"�?E}�PCNak�QJ����u�bW��i�;�o������_ħ�_ں�����?ؾ��P]c���0�QR��"��:�6X
���J/l��G��Sh	�^x~�ߤv�Ў�ر�vH+�FxG��G���WQ@x�����?O˘��lf�!}Y�aX��(Ī2G��,�z_��t��{y��3�Ǘv~�bk)ؿ=�}�-D+��'f�NnY�V��6���u��Q�&ĲJ��r�RZ[R+d�d*��7��tZ�B:�nEu���ŧ���Q��ߡ�\�����;�4|MP�ZiO��8��ل�\DZ�m0?�����օ�� zK�-�(<�iA� ��嬖Ø]��� B��G.4�q�|I:]�4ף��gQP���k��3�5��1�����I���-�f����⽲�k xG�q2��t*�YkGx�K�x�� �^/��s���.���"���^���)���:�H��4)'�CZ����d�A=��E4h�r\xX-=�{��>�"Ao�I�:lP��D%�~\jA/Aը�ޙ�{���'ݻ�����D���AH����%繅���C��D��4��΃�Pni4�K&[�M�}:��c|����+z>�q�y>�O�������:lk^c�x�㱀/� $hw��d�V�+�
N�'�_����N��;�=t�]�=p�k�o'zR��M�m�Q?,ع��_�p��]���os�q��t��t�g'�`���.6�<��2*��)�eL1=|j9�������7G���H+��O7-E+f4���`��FY��$R�&x8����X��ʆݪ°U&)]!�����J����bL��g7�/%ZZ���|����ۢ�.X���b�a�}*�ݩ^�26������&[�H�u�an�X��k��Ͷ�ѶP�+!V<�A���\2|���V���ţ������W��V�_���rL�&�*�}:���P]O�%�Ƒ�tχGԽE�F�&&�ȧ��{3t|%Cǆ2�t�N�{�\����7�A{����3�_etT��`���tTa}G�z�y�":��������?|����t���=zDp�D�
��c��:�
4)���T�3��a��Y�����#wN|���G��G;Д�W��!܂��aM�K~F�R�*�M[�#��*ڝ޿�����9z���m�Q�c���
ڌ��s�5��@���V�A��A�	��W���+�J�����`�(�Q)0�T1<�p������������O��.P �AG�s44 �]��Hm�&��m�a!K���w&��J�H�Qt�ζ�QÑ(��g|$�w�����v��6��/3h�=��Ok7ҨJb�P��ǟ3z��#���9�����i����,�XiIC	.yb�T�h��))QZ���3����4�FT�=G��a��P�W�Cm �~}ûwo̞7��8Z`�Ay�W�b����[<��#M��p�>�܈����ӻ)��,2��-c��Pe&�����̀���͚���S0����wq���_�T�O�����������C>�pm��O��G����}dh�H����F V<� 
\��ҿ�''^���5=��m���S$x����#CcGg̓ށ��~�<[��1u����#݉~��v���R}�a`LZ�w�����a�z��ɍ��.�_�q��KB��&��7�*I�rK�:7o K=�]H���nڒHl!��kƘ�V�J�� ���$��)�Z�:L4S'ĕm �lOީƏ�H�P�ƽ�9��<��uhp�p���	=
�&Boj�G]��؀HQ����c�-q	/]AG_5c:F��d1%Q����@y	,D������AҞ;~<5==��Qm�Ċ)l�TYb����Ǎ��7S�32��d�;N�L�Đ�Vĭ"{3���v3���hP�����l�5�Ζ̅�{#����Bqn,v��f��7��=3�ctU�O4�<�����}5B���
'{��D�{@�0��U�,GL,�8l~C�a�b禞T���iڗ���@��ʚ�bXxy[��[���j�p��X��Nr��E�F�m>�N2�Ffmm�1�K?�w]!��;�.�"s�D��"���V��ɐ�e�P���),�V�L�<�U���$�*~��s/�^����v��f�3����������;�g�¬9�J�ׂ4?�3e�uZЉ]���f�Cg<���7��XG����Tk�7�
�	+�*��܁��6᧨����Ux.�.Q�;g�{�|��θ-Ի>%�����fDҷ8�J����Ac��2��l���W�bW�3Q���5�F�ܕL%KK��%��_�^�m�l'������Hq��0�'fD4��T�+Y���X�n�]��.��xJ��Mi���d0��qW��V�L{��ˁ��,�M�Z��Xj�d�F��&,�j=*X7h⼡^� ٯ�U1��A�b7�tY�]�\eS  ��r̷�a�)*E� �ULM�nϿ���R\�ʴ���ƫ��.��]�MEhz�W� ӓL���wKs[���=ڷ�>cjqU�[C�~_�|�:�m��.-+.5�����CyEiQq��X򸻫��|��&�!�Բjs�8/x�UZ��C�9S���fFƧ��ǏwNN&��e��ۧ�������QiW�s4F�^�RՖ��Vi�J=�ӛ|���@O
��H�$�g[���o�=��f�C�"fe�1��c��Om����e���X$������)��1�YYeL��������[>��O��k�a��'oY4@�3�$9V�C=
8��JG6ne5H��
�+b��:�����0��}�������'�xG��YB+Hy.�gdlQұ��V��X�(���ed}H��� !=���ܡ�A�lQ�F���O�b���d^I1.V2y�3Ъ�aA��Z�1,:#̡Z�et��K�م|��]�Y�c�o�1�ǌI]I��"��r?Q2R:�o�A:@Di�l�;ފ�w;jkw{�%��.Wua���OV:��Oݑ,*}����j_㓥E�{����y1��� d)�X/QbNZ�:%v17E2� b��%�J�r�6(��4����l�A�^�)����*˓��'� ��"����1��Je^Ҭ�2��)1a��#S[B��s`��_j+6�8��bU�b�c7b�sM�ꊁ	�^�������/�hJ���k�ɨ��z�G�2R���p>r�?��7R	 �T/M��������[���vLwm˛#X��0��=�YYQ���b+����P�yO%)��h��s)S���y��������(d\���wb����0�e�2��/(�D��)�_J��Z[���[�c+K�q�ܹ�E���B�c�[�3cƅ���c�v#����F�K�z�H^و&^z�&���i����AW�<IӨ��#y;G"�l7�nj��lkj���Z�".W��5����n_���Z��m��^��\!>�������k��ArH��e�y$���s
�Z��-�ɵZq5I�r�G�G@Ea�a�UL;��Du��=�����ԩ��S�'����c�17�u}��i�zъp�C��\x���5'�f�/�qk�Y!��3��\����{f�2��1�;$���VO8�c��E�׻�\�S��\����Pb������.�L��%���S�Z7����td fL8ʊ��9��ߛS�Sw]��'^s�����֒���hx��;�)��x���;X�8�Z?�j�W2k��g9��"%�R��C��21���z��7?�m=�86.��uu#|Ӕ9��׵��y�q˦�zᾭ['�X���1r�����+�>_�.ب��<�P�M��bb���1��jaU2b�x-W��g�Z9yr��n�}������K/�R�$U��F�x�k�+�SuL��G�\N�\eye�\u�2Q����ՕNg�3�������YECLg�.��_
�42H$�d�\�ڼ��mwg�HdW�:0��R���-.Uz���-=~%���cG8���}gHHy��N����ԡL�������ɨ�	�J��8̿��3�G��f��o3�CRj-[�?45��	���@_��ho�9��:�M�'��5��7)��z���}��u!ېjCN��3�L<���pjB��܂.�ȗ�Q�Z�$U4R��a$�����M^�f�?v�8�l�����_-�uk�K��h�dJ��a��6��r2t�x���o�?�F�ʉ+'34-2Cǥ4�V�X#� N|�g���54�����|+��,9���6�*^�� 	�5���* oW`�)4����;c<w�x����������9μ�h��=��s:��Yg~�Ñ��oRx��;���6��jc/Y�PEW���G5�{Pw�1�������P%;S�#g�]�q�g�	xj�Z��RR�������.+<�t�;x��� �,p�
��?�%�<��e�ї�Yx�6����(,p:�A�X��M�e��`%\EW�o��aܺ�1�y�,�3Y§AJHF��͕i%��0X���f���3�i��˥��'.�<]����_���Җ�_��Z�;��=�����ѳ������lVsە�ٮ����D63Y(��e�:V��M�����oP��8-���z�y�����A($E�3�,�d29ʐ�ȏ�l!�����g2�����YK)-�~(<pS�J4��C7��'��D۷6������%�?A��`2�:�����8f�����?'���[��Rm��|�U�Bz�9�a-A"�<��a�� f!�/�G&���8���HY���Njt�;V��ad*O/��ǅ�|.�L���	�V1R�Z�����f�Zm��W�9�@*�8��D@<�����;8#�&� ���
/�Z ��~��E[�z���̣�4FRz���TG����k(SG%Ӆ�S���uT���J&w)�-62<8�lK��9�%Gg�w���hf"Ҳ9�u��G���:�dSˈ�2@c�B�^Z�K�L��N���Y�?��_�{T��AQb�Z�Kl&w�2�tn�k��k�U��*VB�X��#�����].
3��~�~'O�8�oW�TWɀ�N	������Y��HY����y�v��L��e|�|$��	V�	I�I���4�K_��Zl�-��-���X�d�r��=��@<M%��i4�.Ċ�!1���%"�������I�|e�Nx{�O��E��q��6�b�-��
���}u�RR&�J[X�Q��)UV���I��H�;:c�S����c�ֱ�[��o�m~)�����-����������ox�����fo��%��ɖ֤W��
�@��c��_P	ˉ�Tr�fC2%�=Y �$��n"d���?�Q"�~�a���)����J-}�E՚0ƬIidi�N�
 ��K�8A���I�؇�OT���H_~݇^yyp�bB�)�~}�*G�nR��3	x����?�FLz-��	��q�^�3���``�����d����j:�T��(��*��Xp�}Ђ��A����1��ހSB;;;w�2�m���5%&�<Q]nH&c�t�߅L���\奈d��]E�*��=��ݤ���i�/2&��d�sH_�3��g��?�1�����>��@�
zWL|�&_o[Bf3W,Ӈ���V�/S�$���=~צ��K���Z�;�xT+|�话��Q��<�?;wr���s{挭��l�M]��l��I�.���*l���Q�)��r�a�̀��J��K�	)�pI"m�������[�n�S���%��m��NiwL<�gŊ����b��짇V?qQy�T�X�Q!`qr9k
�3�*�
$��X$�`�Kk\����?����|�S���1��J Ys��A�U�%Kb�R5H-�9�LS�qƋ�b�#*69+S�4Lf��~Țq}݆�v=&�.��<�#�~�/������_���ȧ����-c\�gb�+61ٍ^�����s�vD/���r͑|�j��p�xg��Xg�8��z�F���b��-�d�c��2um��Ե�{=�w_�u��Tymm�����1�u�X�l����QX��\UZZ�ORD�s@EQ1	�gP��d
M �I�Y-X�q�S/�(%��Ԧ�j.BQ.Pe%���� |�j�u\�3��Fu�X{Νo� �0�֝w��F��Y�٤G�����w�ϋ�Q���,���]'�h�b�d�޽桢������s��/^(��s/�?�������F�@��1��˫sb�Zk���6�j.���Y��? ��|s��+-3e�A�����V�ڌ3��������~���]=�n�q9J*'�ťU�e���ʮwH+e�,4��L�Ī1F})Z�~y��y8�B؎�X}�Nki� �q/EK@�m���L>��%��h���)4�lS��+�2�<����t�B�)��z+$�Wi��e/�X\��'�3�M�b��bW���eXt��E�<��e(������z�:�q2V'�h�L!��r�h�,�^��M�7�|}��D�l���R�_����r�:����a�#F�S��J�����~�+�x��d7New�����d7@�ba��z"��8F�.[�̱d�&����L�n�יe1���ٵF��G�ӏ��%�I���a��x�U�)d$>��W3[L�d�
c��$���I"��k4 ����b�$�7�^ܼyw^90pe�w�#�?���<0��80����YX&)r
,K?�>�h������h��SB2��Ԧ;�I�@_&2�\���F0Z\&�j�n`4q�MA���D���s[R;��R��k���s��/��e���E��X�<�bY�g��_���I�,���R�l�ʩ��X}֨.�g�/�xju�6�5:q��Z�jj}E|#�,&c���g��@��n���м�?j�6�oN}�l>�L�5��b̈����g�Y��36/�E�Dg��Ԥ�ZI���H_�X!uC�z�T;~M{���Vi4� �A�#Y^o]���l�5� ���|�=Vl��5=�g�>�]d��W��b4�cF�9��udp�XѬy��1�9�Gݦ���<W��lS�#�g]d2�S�0��QBC@�<<Ah1@h�qg q(�����hY)B�  ��������T��g��of��ov��1t��yk'1H�[����a��O�$L�^��`��d1=�Y�%��8���{��R�+�5�}��Çk�Zb����ZF�ޡڵ��WV֯{pR/��� z�ƙd�ԂP�z����42KUќ�����l�����qW���;yL����2���ڢǇ���jh���9��>����L��|��XViUox�����ɪ�a�~'�O N�U�G�Ȋ�����D�J��7%?*UϘ�,?JcT�+�Ŗ����$u~ĝ'���$�������Z��:";Ψ�31p��h�g�b��Gw��R���w&�	����R_�E���q��{}B�
�.�\��fՉ+݃^f��.�ev��OϷ�I�K��;��WΓ;0��;H}��aI}"/�'y������~������������t�(�Z��BCwy�B�G��=�h��@�く��Ҿ'|3s�����W�}N�_$��F�4z�|H&f���j<���$�z������'��?s�����O�b3u�7��V&*�	}����"����X5#2]v<�'9G1V"�"b����]��@'�e\F�Xz��_.��ht&����9��4,[�?_��H��G�rOh.���-��S�7�zߴ8fl�O'zT&}aO�h����i��`���/+�+�ȳ%����%��n�ЩF
Ɍ��)d#�\ܤa��t3(� xR&��6*��{�5�h�n�Y*:4Zj.��&�p��.{J�NF���tOO���3l����~��S쮪�7����ʤ=G}T��ϖ�5\RI]W�����L&�$ܷ�c�����	��d�R�9�)#�s}~���	5�%�"/a�+�ww�O�%+5LJu���$��_==�^��F��=� C|��D��["m�A4&�������I֎��(���g��ydG�Fm1M�҄F.��l��	5I䓟�8믳>�"����P�LtD�h��f�č�d뻢B=#�����H�?���~u���;#��H�����W_y��N8]o�	�&�hJ~��k��<Er�`����sr��TDsr��<s~�f1V'k\ICY��~{���A�x0�d}Q֞��_ Y*�a�[�pj���ʍ!�2���$���S(��ux�����lċ�竪��j߳�t�ѧ�XGmgʣ���ɴV�I��rb���|��$ΐ1F~*?�~�������x�'*�񯱭1e|9����(ѧ���x5����sO=�؃m���	�;��
%�_�9�[=K+�\~��#[wQg�ĉ�(�K�w�s�{O6�*7���O�J�hA�k��e B���s9Е�T#M'yx\�GF�N�h��g��Mb�X����$�(�8	��� �D}�B3���M'I�k�}��}sF$�Mr�v�]�v��?�4�ڤ�C�xd���&���������F�@v�
��K�20:lf<<�pw��;+rYb�h�
��de�8֌��տ���aBw�!0�R1���SY�2�3����uQZNǔʱ�Ɇ��*�D��dp��~`R�NIk�c:�K����m�c��V���3p��X�T����B��x� {}�{�O�,i�h�I�5$g�Z@ȅ���C3xE�t����<\񧃗���TJ�ڠMP���^�W���A�<� 7�9ġo�	���W/	~Sl�Ⴇ�^<:�jy4,��:+^=Ȣ��`l��*����=��m��j�)�܇+`������,�ɒ�r>Y���Z��<Rs��9k�3�#uW�.���+��d唒:�����Ǯ��~�R6���,�Md޿�wmD�)���!���� FIE��Z�3��9�$?"������Jï���#�;zeb���"=�xt��^�+քL!�:�!�imG��B<qG5q��]�hޫf���ٯ�61�\�Z^T�XURm�YG2�Iۦ�v���ӤY��8���na'�}�=�g��gu�����������~���i^�R&������T�tw����vw3Xx.+�}�d��?N��^���//�?
y�$���l~a9��Z���٧h=�F����� J��WU��İvJ�؃Wc����1��<kGQ�����I��	���ZK��Qڋ>Akr:��ڿ���W�����l�_G�o�<���^G�u)�=L�����[��=��e���Q�8�<\��6�;G���w��0֛�x�=�p�!x'<���o����y�|@^X�~~L��kX���b�X�d���@7j�t=�������N�:�/�Ӥ"8����~�������k�bj��I
���"l��H����R����:�z�V1�ۄ$�_��/�.����˿�vY���`�Eŀ�XM�Y�VF�V)W���J�h��.���J}�E�Wm<Lޞ�+d�J'˲���N��[-�Ba0��X@�27��yUj������D8;�   x����N�@�O����qC-.\� 1�0�	Ⱦ�'BKhy��>�K���t:���؛���{�� {x���ٜS(�9�}f	g��s(��4�L���S��n�)ƃ�4jx4���W�Y\Zy�9Y׆�а��Q��6x���E8��;��Z�q��W%�nS�]?uNF�R���f��8�U�]��TͥW~��`�)��E�'�8z��+��<�\�6�s�b��Lr�\�=�e�.���>�*���=#*K�-]�0ØY���ңK!2~���O~��_�����v��?9;�Ҫ��'.}�.�|G-� ���_z\ם�{���	��������⛉�g8f,t�T��h]�{ȊU}h�W�x�>_�ӏ�wl<��   x�m��rG�n�D�bT�9�ڝ$eR �s�Z +�  ��r*�U>8����M��?�þ�h��&���j�g�����Ѓ��������=X�^,�2İ}�GX�Aa#�VbVc�b�c6b6c�b�cvbvc�b�� ��q��m�@)����1�	��)L`YL!�38�s8���K��+��k����[��;��{��x�Gx�'x��=� �W|���)����+|�O�������K��1.g�� Wp�C�G9ƕ\��\õ\���������­����������ý���<��<�q�G����	&�b��Q�q��I��'y�YN1�3<�s<���K��+��k����?�g���1��7����[��;���x���������O0���>Ǘ����Yb���9+�a�5��>�e�-��\�U-{ބ��Fil*J�-d:J��J�L*SʩN��R�}��J��J���Ǘ�g��I�ieV���:i��F��o��F��o��F��o��F��o�[�V��o�[�V�����|+�ʷ�|+��w�|'��w�|'��w�|'��w�|'��O�M�I�B�ڟ�=3~�T�Q��o�)�ʬ2jn|?�4��J���F�z���t��Y,�檝Q��,�i[��i�I*Sʴ2�7�a�6�/���?T������l8Xau��t(�F�����z)�F�XЩ�{��as�Ј
�c���5�v�G�[�J%��u{����b!�6�FX���u�,���va�̖4�����w��ru�ҵKݾ�.�����ђ�   x�%̽�  D�w�ұ�{P�n�?!T$X;��.`�`^�}�+� %����+�
��=)���+7���
#w�P����[��e�?V��	  x�ݚk���OwO���>���+�,	�����XY��I��XD-�*�!T0�����(�D�15&EY)+v���&1�8�+�JY������ޞ��B��S���=������3#��d�ryI��H��;V�(�7~��U2Cܕ�~q88��][��Ůmq%%�_Z�Jf��B�/���W������nZy�J�A��tFlԪy��{��R߃{Wd�L��r!=R�t��\k�^���S�fiy����{N�;��`��q�b3���:�rmKK�L��LY ��
Y#w�7�_�Q�XԒ���Q���)�Htٴ�*���G�:q������d4�1�K�M��*1�X�ǿn���҄�D�!ϾTm�>Rd\|����~��X�or�J�+{|N}�?!�9����q��z���l�M�6a�m�m���fr�,#woȿ��V�����m�=v���c;�8_s�L\��z�}�ӝ�.r��[�{ݝ��wn1i'G'�%W$W%��|9���)u�����9�\�|��E�����h�f|&(g��e6�9�I7��\_�.D/F���W�W��A�A����Y�qޗs�CQ�Բ�ZC�E����.t:��w�O_�q�t����y9:Z��$�]�7q���|�"t!z1z	��{�F�P��\��}�Q�~��e����q���HmH}�i�[�H=���(�=�}d?˾G&r��>`ї�����5�UeD�U�zѥ���pf���5�UZZֹ��������>�s�<�F�kr���'�"G�<*��3G�<�樜��|�Oy<yT/��<��y&?bJ>bʬȧ�O�>=�y���g����T�ß���/�S|V�����Z����%����X�Õ��(�~�y,籜-�c�χ����~��Л�~X,`����
X)`��&�����Je�H�jZJ��h)I�F6|�g`�y*-�q0�7�d��`�e�Ҏ��|Ř������!V��̂��!����c"毤���)a���6J�(a���R�s��ejẍ́^3Q�Je>�Q�~�Q���8��`D�q�JӮ�e���O߉��g�C��a]j�i�k��N�;��;�s��ۜ���^"��L\��9�!�3q8�k��Lw���}�}�}�� i>��zt�݊�B��y� Tv861_637�27���iˡ}�^tm�9@������ס�iوnB�p�݆އ�@w�{�w��BQ���ZX�nTE=8�H�����Tw#jzl��}m{�}�͆(� �"q�b>��{�}�~t �d����a�:������L��,ȉ�mW��Fէ�}ͪ��!�EQ&������ޠ�<�D���6�����b��{;8�űݍ>�>���!�?A�r�S��AsT��GQ��1����'�'�C`x��a�YV�P�Q�d��kԹ��{0gŊ�3��i�7Qӣ�m
��������p��+ο�)�G�����*��rU��U)�\�s�>q˃w�t��[�1�d�D&KeY�Z���@����s����lKT�?z��୼SYܡ�7�	Vp�JB9?|��v*Q�X�3��4_�c�^�TX�bX'/���]3;���D�d1��s����b��2O������k��;cp�~�,{�4����(R�����F���n���m�zո�J3��=��Z�jlY���C����]���l��!�g�"�lm4�;��U���*��[�7�l�g��Z0M����U���Զ�������U�v����'��� �h���ӏA���Q-�����y\��!ėϔE��5��A����pM�%�.E�+~/�����軓�D��(ƙ�-fV��WL��-�E���q��6g��6�]���`[�7f%f��L��*f%��F9��W��o6�1m����h���N%��A=�M^9�3�w�Z(z=���GzQ#�G͇���ʯ
g滆�u��KQ�*��[�Z���~�o�����#������د�e�-��a=�oV4❬g����sɜk��fҏ��<��~��p�����Sc �����j����6Ė�������'�O�7��ў�����'���_~��?�b�?�IU���`�ɇ�UFq��>S�虒���v�s���C�n��L��F�t�O��pc?9���O������5ֻF�ى?�K�m_2�0x��>*���=�~����+�~�װs�HNB~;5fmէ��Gr����}B�:�ro*���`c[�χȓ���k!	��g5ߤ�l�:��cV��s�;�c���/���-i�I�{~7�Itz9ڃ.�Y(��*���H�|Y�f�M���ݶ��|�R�Kt?��%�yfo��l��Fs.͹5=h��]��jFY�u�e�F�5�=�����1�Sì�F/@��J�w�n�XD=�&� � ���݃��v����3�z���@��۩��=<��}M��~��'��Vɪ>Z��X�O�:F��P/�Tc�^+7���+����(����-y[ޑw�o�y_����ڰ�#b�o�� �2���ə\u���s.���d~��6�X>��ː��i�FN��+d�&2j-��K��z�M��l�ͲE�'ߗm���l���/;d��Ƀ�W�}�_��<.�I9$O�3����:�g)��d�Tr�-�D�h�4Wȕ0����5�Z
K����s�6Dd�,p}����d@�=lt��/+�!��kcDR �K����(�`}
?������.�D�jN��z�r��*���I����`��|C�{d���l<�,�L�'&ËA�Z���n��{ j!'.�� 	P���l~'�N=G����h���lx���A���o#�x��w[�ai�Y��H$Ad�1�%�0f�����q�z$�0ʢR9d6[m��m0� )^K�ڊ�bn���Y�Q�v�%F�k�_G�b~�5xm������c�� ZS�NE*a�D��:K�V����j�Fi�-���z�W��3��Aq�w��ӂ���0I1c�=I�S��Y�#s������A�����i��<#_A5��FP��7�o�F�BF���,d4�;Ҩ�H˿�F����2����2SNq�F�)�Ui.8�:ŔRL-̨������X��ǋ�3�a��t��8�\Ln�D���H��3��k�3d	2������Df�2x���l\�� k�Z�qq�GҲid��D��A,֎-Ĵ��F�v #X?v1����e��:�>�t��䙛���U�K�!d
��Y֫_ f�[���_V?\�CR��BB^�2ì����f��P~��G�akuZ݄��	�i�jkEZQG+�Њ&��f��M�l���l�b�@l�\3�u�u��6*�&]�m�G�@�>/1�S�;����;��S�;��tY�� ��f�֬Ak֤5��:����ʵ�j�wK�ئU�ylƏ��yZ�F���!b�}H+��vX�CF񄸟��Ih�ǰV�$:S�s���Y;wó�N]�')N����	r�����"�Y���?C�J�r����~�l3���Qxlx3ZC�d���.O �X��d>���)�}9�U�� |q�g�(����0 ��(�:�]�AJy�T��)�ٮ�!�3��m;�&����&[#�Z[�2A�)P���)�`]�B��O��?m}f�f��ieF�2#cFJ�Ѯ�h�je�6V�6	��H����oь��qG3ަoЌg5����&�i�f�9�MW�٪�l��1�yLi�cl�������6�zb�j��/�Yċ x����KTQ��S�4�����E� Q:�H�-B̚n��4׫��!-�EK���U+�2nJW�� S��wk{�;CݬE��}����sq�n�\����yz���̑r)�p�6E�ަ]*C��J���NU�M��$�r�+��	�W�����p1*�\���(�Q�����j��W5,���¶��?��4v����e�AFm�s�p�f�l�e�V��fK�����r���%͜y�����LJ&R�PU�\O�\������YYYc�D�st�]�^��y�[��|����W���U=���8�*�XV�����.+�S�<υm�c��uB^�^�Z<`�p��}��L�	�^�6�w����'��2ڻ�=�Г�'�mu����n�z���Yӳl	3z�S��9V�ϚΐE�s:�$=����޾�E.1E�iu���#6�T/��ˋ���]�5�O��i?��K                     [remap]

path="res://scripts/KNIFES.gdc"
       [remap]

path="res://scripts/KNIFES2.gdc"
      [remap]

path="res://scripts/PLAYER.gdc"
       [remap]

path="res://scripts/UI.gdc"
           [remap]

path="res://scripts/global.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      application/config/name         The Gorohus    application/run/main_scene         res://Game.tscn    application/config/icon         res://icon.png     autoload/Global          *res://scripts/global.gd   display/window/size/width      �     display/window/size/height            display/window/size/test_width      �     display/window/size/test_height      �  #   display/window/handheld/orientation         portrait   display/window/stretch/mode         viewport   display/window/stretch/aspect         expand  /   input_devices/pointing/emulate_touch_from_mouse         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   *   rendering/quality/driver/fallback_to_gles2         >   rendering/quality/intended_usage/framebuffer_allocation.mobile         %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          ,   rendering/quality/shadows/filter_mode.mobile         )   rendering/environment/default_clear_color                    �?   rendering/quality/filters/msaa         "   rendering/quality/filters/use_fxaa         )   rendering/environment/default_environment          res://default_env.tres   