.class final Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;
.super Landroid/os/Handler;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LiveDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LiveDisplayController;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/display/LiveDisplayController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    .line 602
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 601
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 607
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 609
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2}, Lcom/android/server/display/LiveDisplayController;->-get6(Lcom/android/server/display/LiveDisplayController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2}, Lcom/android/server/display/LiveDisplayController;->-get9(Lcom/android/server/display/LiveDisplayController;)Lcom/android/server/twilight/TwilightManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    .line 614
    .local v1, "twilight":Lcom/android/server/twilight/TwilightState;
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/LiveDisplayController;->-wrap2(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 615
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/LiveDisplayController;->-wrap4(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 616
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/LiveDisplayController;->-wrap1(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 617
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2}, Lcom/android/server/display/LiveDisplayController;->-wrap3(Lcom/android/server/display/LiveDisplayController;)V

    .line 618
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2, v1}, Lcom/android/server/display/LiveDisplayController;->-wrap6(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 620
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2}, Lcom/android/server/display/LiveDisplayController;->-get7(Lcom/android/server/display/LiveDisplayController;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 621
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2}, Lcom/android/server/display/LiveDisplayController;->-get0(Lcom/android/server/display/LiveDisplayController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->-get3(Lcom/android/server/display/LiveDisplayController;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 622
    iget-object v2, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v2}, Lcom/android/server/display/LiveDisplayController;->-get0(Lcom/android/server/display/LiveDisplayController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->-get8(Lcom/android/server/display/LiveDisplayController;)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 623
    .local v0, "transition":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 625
    const/4 v2, 0x1

    .line 626
    const-wide/32 v4, 0xea60

    .line 625
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 622
    .end local v0    # "transition":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "transition":Z
    goto :goto_1

    .line 620
    .end local v0    # "transition":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "transition":Z
    goto :goto_1

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
