.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 178
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v5, "[Receiver]+"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-set1(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z

    .line 184
    return-void

    .line 187
    :cond_0
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 188
    const-string/jumbo v4, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    :cond_1
    const-string/jumbo v4, "phone"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 194
    .local v3, "slotId":I
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 195
    if-ne v3, v7, :cond_3

    .line 196
    return-void

    .line 189
    .end local v3    # "slotId":I
    :cond_2
    return-void

    .line 199
    .restart local v3    # "slotId":I
    :cond_3
    const-string/jumbo v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "simStatus":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "simStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 203
    const-string/jumbo v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 204
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    .line 223
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string/jumbo v5, "[Receiver]-"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    .line 177
    return-void

    .line 205
    :cond_5
    const-string/jumbo v4, "UNKNOWN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 206
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v6, 0x7

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 207
    :cond_6
    const-string/jumbo v4, "CARD_IO_ERROR"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 208
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 210
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring simStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_8
    const-string/jumbo v4, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 213
    const-string/jumbo v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 215
    const-string/jumbo v4, "reason"

    .line 214
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "reason":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v3, v7, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 217
    .end local v1    # "reason":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "LOADED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 218
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v3, v7}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 220
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Ignoring simStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->-wrap0(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
