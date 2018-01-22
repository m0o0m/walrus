<GameFile>
  <PropertyGroup Name="doun" Type="Layer" ID="ed08efec-f838-4bfa-8f10-032052dff91b" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="6" Speed="0.1333" ActivedAnimationName="hot_action">
        <Timeline ActionTag="235059136" Property="FileData">
          <TextureFrame FrameIndex="0" Tween="False">
            <TextureFile Type="MarkedSubImage" Path="hall/room/hotanimate/hot_1.png" Plist="hall/hot.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="1" Tween="False">
            <TextureFile Type="MarkedSubImage" Path="hall/room/hotanimate/hot_2.png" Plist="hall/hot.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="2" Tween="False">
            <TextureFile Type="MarkedSubImage" Path="hall/room/hotanimate/hot_3.png" Plist="hall/hot.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="3" Tween="False">
            <TextureFile Type="MarkedSubImage" Path="hall/room/hotanimate/hot_4.png" Plist="hall/hot.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="4" Tween="False">
            <TextureFile Type="MarkedSubImage" Path="hall/room/hotanimate/hot_5.png" Plist="hall/hot.plist" />
          </TextureFrame>
          <TextureFrame FrameIndex="5" Tween="False">
            <TextureFile Type="MarkedSubImage" Path="hall/room/hotanimate/hot_6.png" Plist="hall/hot.plist" />
          </TextureFrame>
        </Timeline>
        <Timeline ActionTag="235059136" Property="VisibleForFrame">
          <BoolFrame FrameIndex="0" Tween="False" Value="True" />
          <BoolFrame FrameIndex="6" Tween="False" Value="False" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="hot_action" StartIndex="0" EndIndex="8">
          <RenderColor A="255" R="46" G="139" B="87" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="74" ctype="GameLayerObjectData">
        <Size X="1280.0000" Y="720.0000" />
        <Children>
          <AbstractNodeData Name="btn_tab_3" ActionTag="-187898065" Tag="483" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-366.5040" RightMargin="1404.5040" TopMargin="446.0000" BottomMargin="158.0000" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="212" Scale9Height="94" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="242.0000" Y="116.0000" />
            <Children>
              <AbstractNodeData Name="anima_hot" ActionTag="235059136" Tag="451" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="-1.5000" RightMargin="-1.5000" TopMargin="-1.5000" BottomMargin="2.5000" ctype="SpriteObjectData">
                <Size X="245.0000" Y="115.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="121.0000" Y="60.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5172" />
                <PreSize X="1.0124" Y="0.9914" />
                <FileData Type="MarkedSubImage" Path="hall/room/hotanimate/hot_1.png" Plist="hall/hot.plist" />
                <BlendFunc Src="1" Dst="1" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="-245.5040" Y="216.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.1918" Y="0.3000" />
            <PreSize X="0.1891" Y="0.1611" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Normal" Path="hall/room/friend/pic_room_xcj.png" Plist="" />
            <PressedFileData Type="Normal" Path="hall/room/friend/pic_room_xcj.png" Plist="" />
            <NormalFileData Type="Normal" Path="hall/room/friend/pic_room_xcj.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="btn_tab_2" ActionTag="-425103397" Tag="486" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-351.9120" RightMargin="1389.9120" TopMargin="302.0000" BottomMargin="302.0000" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="212" Scale9Height="94" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="242.0000" Y="116.0000" />
            <Children>
              <AbstractNodeData Name="select" ActionTag="-1406263334" VisibleForFrame="False" Tag="362" IconVisible="False" TopMargin="-2.0000" BottomMargin="2.0000" Scale9Enable="True" LeftEage="11" RightEage="11" TopEage="11" BottomEage="11" Scale9OriginX="11" Scale9OriginY="11" Scale9Width="14" Scale9Height="14" ctype="ImageViewObjectData">
                <Size X="242.0000" Y="116.0000" />
                <AnchorPoint />
                <Position Y="2.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition Y="0.0172" />
                <PreSize X="1.0000" Y="1.0000" />
                <FileData Type="MarkedSubImage" Path="hall/room/general/room_select.png" Plist="hall/room.plist" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="-230.9120" Y="360.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.1804" Y="0.5000" />
            <PreSize X="0.1891" Y="0.1611" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Normal" Path="hall/room/friend/pic_room_qzc.png" Plist="" />
            <PressedFileData Type="Normal" Path="hall/room/friend/pic_room_qzc.png" Plist="" />
            <NormalFileData Type="Normal" Path="hall/room/friend/pic_room_qzc.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
          <AbstractNodeData Name="btn_tab_1" ActionTag="-1249706383" Tag="489" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-340.9040" RightMargin="1378.9041" TopMargin="158.0000" BottomMargin="446.0000" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="212" Scale9Height="94" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
            <Size X="242.0000" Y="116.0000" />
            <Children>
              <AbstractNodeData Name="select" ActionTag="-23056106" VisibleForFrame="False" Tag="363" IconVisible="False" TopMargin="-2.0000" BottomMargin="2.0000" Scale9Enable="True" LeftEage="11" RightEage="11" TopEage="11" BottomEage="11" Scale9OriginX="11" Scale9OriginY="11" Scale9Width="14" Scale9Height="14" ctype="ImageViewObjectData">
                <Size X="242.0000" Y="116.0000" />
                <AnchorPoint />
                <Position Y="2.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition Y="0.0172" />
                <PreSize X="1.0000" Y="1.0000" />
                <FileData Type="MarkedSubImage" Path="hall/room/general/room_select.png" Plist="hall/room.plist" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="-219.9040" Y="504.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="-0.1718" Y="0.7000" />
            <PreSize X="0.1891" Y="0.1611" />
            <TextColor A="255" R="65" G="65" B="70" />
            <DisabledFileData Type="Normal" Path="hall/room/friend/pic_room_znc.png" Plist="" />
            <PressedFileData Type="Normal" Path="hall/room/friend/pic_room_znc.png" Plist="" />
            <NormalFileData Type="Normal" Path="hall/room/friend/pic_room_znc.png" Plist="" />
            <OutlineColor A="255" R="255" G="0" B="0" />
            <ShadowColor A="255" R="110" G="110" B="110" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>