.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2622
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 139
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 68
    if-nez p0, :cond_0

    .line 69
    return-object v1

    .line 72
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 73
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 74
    return-object v0

    .line 77
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 98
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 111
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    .line 109
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 94
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2619
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 316
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    move/from16 v0, p1

    packed-switch v0, :pswitch_data_0

    .line 2615
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 148
    :pswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 150
    .local v179, "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 151
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 153
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 155
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 156
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 157
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 158
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 160
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 161
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_1
    move-object/from16 v6, p0

    .line 162
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v280, v0

    .line 164
    .local v280, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v6, 0x1

    return v6

    .line 159
    .end local v280    # "result":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    .line 161
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_1

    .line 171
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 173
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 174
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 175
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 176
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 177
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 178
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 179
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 180
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 181
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 183
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 185
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 186
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v280, v0

    .line 188
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v6, 0x1

    return v6

    .line 182
    .end local v17    # "userId":I
    .end local v280    # "result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    .line 184
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_3

    .line 195
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 197
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 198
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 199
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 200
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 201
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 202
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 203
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 204
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 205
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 207
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 208
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 209
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 210
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 211
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v280, v0

    .line 214
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/4 v6, 0x1

    return v6

    .line 206
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v280    # "result":I
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 208
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    .line 209
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    .line 221
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 223
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 224
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 225
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 226
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 227
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 228
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 229
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 230
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 231
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 232
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 233
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 234
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 235
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 236
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v281, v0

    .line 238
    .local v281, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    const/4 v6, 0x0

    move-object/from16 v0, v281

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 240
    const/4 v6, 0x1

    return v6

    .line 232
    .end local v17    # "userId":I
    .end local v281    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    .line 234
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    .line 245
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 247
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 248
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 249
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 250
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 251
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 252
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 253
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 254
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 255
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 256
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 257
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 258
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 259
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v280, v0

    .line 261
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v6, 0x1

    return v6

    .line 257
    .end local v17    # "userId":I
    .end local v280    # "result":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    .line 268
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 270
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 271
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentSender;

    .line 272
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 273
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 274
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 276
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 277
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 278
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 279
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 280
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 281
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 282
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 283
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    :goto_a
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 284
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v280, v0

    .line 287
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v6, 0x1

    return v6

    .line 283
    .end local v280    # "result":I
    :cond_b
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_a

    .line 294
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 296
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 297
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 298
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 299
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 301
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 300
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 303
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 302
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 304
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 305
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 306
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 307
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 308
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 309
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 310
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v280, v0

    .line 312
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    const/4 v6, 0x1

    return v6

    .line 306
    .end local v17    # "userId":I
    .end local v280    # "result":I
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    .line 308
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_c

    .line 319
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v185

    .line 321
    .local v185, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 322
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    .line 323
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 324
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v185

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v282, v0

    .line 325
    .local v282, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    move/from16 v0, v282

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v6, 0x1

    return v6

    .line 323
    .end local v282    # "result":Z
    :cond_e
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_d

    .line 326
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v282    # "result":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 332
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v185    # "callingActivity":Landroid/os/IBinder;
    .end local v282    # "result":Z
    :pswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 334
    .local v303, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_10

    const/16 v16, 0x0

    .line 335
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v303

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v280, v0

    .line 336
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    const/4 v6, 0x1

    return v6

    .line 334
    .end local v280    # "result":I
    :cond_10
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_f

    .line 342
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v303    # "taskId":I
    :pswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 344
    .local v73, "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    move-object/16 v284, v0

    .line 345
    .local v284, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 346
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 347
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v284, v0

    .end local v284    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v284

    check-cast v0, Landroid/content/Intent;

    move-object/16 v284, v0

    .line 349
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v202, 0x1

    .line 350
    .local v202, "finishTask":Z
    :goto_10
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v53

    move-object/from16 v3, v284

    move/from16 v4, v202

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v0

    move/16 v277, v0

    .line 351
    .local v277, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    move/from16 v0, v277

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    const/4 v6, 0x1

    return v6

    .line 349
    .end local v202    # "finishTask":Z
    .end local v277    # "res":Z
    :cond_12
    const/16 v202, 0x0

    .restart local v202    # "finishTask":Z
    goto :goto_10

    .line 352
    .restart local v277    # "res":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 357
    .end local v53    # "resultCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v202    # "finishTask":Z
    .end local v277    # "res":Z
    :pswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 359
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 360
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 361
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    const/4 v6, 0x1

    return v6

    .line 367
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 369
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v277, v0

    .line 370
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    move/from16 v0, v277

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    const/4 v6, 0x1

    return v6

    .line 371
    :cond_14
    const/4 v6, 0x0

    goto :goto_12

    .line 376
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v277    # "res":Z
    :pswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 377
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 379
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    const/4 v6, 0x1

    return v6

    .line 385
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 387
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v277, v0

    .line 388
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    move/from16 v0, v277

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v6, 0x1

    return v6

    .line 389
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 394
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v277    # "res":Z
    :pswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 396
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    const/4 v6, 0x1

    return v6

    .line 402
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 404
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v277, v0

    .line 405
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    move/from16 v0, v277

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    const/4 v6, 0x1

    return v6

    .line 406
    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    .line 412
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v277    # "res":Z
    :pswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 415
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_17

    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 416
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 417
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 419
    if-eqz v179, :cond_18

    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 420
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 421
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 422
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 423
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 424
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v9, :cond_19

    .line 426
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 427
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 431
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 415
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    .line 419
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    .line 429
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 436
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 438
    .restart local v179    # "b":Landroid/os/IBinder;
    if-nez v179, :cond_1a

    .line 439
    const/4 v6, 0x1

    return v6

    .line 441
    :cond_1a
    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 442
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/4 v6, 0x1

    return v6

    .line 449
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 452
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_1b

    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 453
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 454
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 455
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 457
    if-eqz v179, :cond_1c

    invoke-static/range {v179 .. v179}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v52

    .line 458
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 459
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 460
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 461
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 462
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 463
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 464
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 465
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 466
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 467
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v271, v0

    .line 470
    .local v271, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 472
    const/4 v6, 0x1

    return v6

    .line 452
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v271    # "res":I
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    .line 457
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    .line 464
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    .restart local v59    # "serialized":Z
    goto :goto_1a

    .line 465
    :cond_1e
    const/16 v60, 0x0

    .restart local v60    # "sticky":Z
    goto :goto_1b

    .line 477
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 479
    .restart local v179    # "b":Landroid/os/IBinder;
    if-eqz v179, :cond_1f

    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 480
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 481
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 482
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 483
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    const/4 v6, 0x1

    return v6

    .line 479
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    .line 488
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 490
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 491
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 492
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 493
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 494
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 495
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 496
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 498
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    const/4 v6, 0x1

    return v6

    .line 493
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    .line 503
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :pswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 504
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 506
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_22

    .line 507
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 509
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v6, 0x1

    return v6

    .line 514
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 516
    .restart local v73    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 517
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 518
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 520
    :cond_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    move/16 v296, v0

    .line 521
    .local v296, "stopProfiling":Z
    :goto_1e
    if-eqz v73, :cond_24

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v39

    move/from16 v3, v296

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 524
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    const/4 v6, 0x1

    return v6

    .line 520
    .end local v296    # "stopProfiling":Z
    :cond_25
    const/4 v0, 0x0

    move/16 v296, v0

    .restart local v296    # "stopProfiling":Z
    goto :goto_1e

    .line 529
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v296    # "stopProfiling":Z
    :pswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 531
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v6, 0x1

    return v6

    .line 537
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 539
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    const/4 v6, 0x1

    return v6

    .line 545
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 547
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v235

    .line 548
    .local v235, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v255

    .line 549
    .local v255, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v193

    check-cast v193, Ljava/lang/CharSequence;

    .line 550
    .local v193, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v235

    move-object/from16 v3, v255

    move-object/from16 v4, v193

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v6, 0x1

    return v6

    .line 556
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v193    # "description":Ljava/lang/CharSequence;
    .end local v235    # "map":Landroid/os/Bundle;
    .end local v255    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 558
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    const/4 v6, 0x1

    return v6

    .line 564
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 566
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    const/4 v6, 0x1

    return v6

    .line 572
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 574
    .restart local v73    # "token":Landroid/os/IBinder;
    if-eqz v73, :cond_26

    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 575
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    move-object/from16 v0, p3

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    const/4 v6, 0x1

    return v6

    .line 574
    :cond_26
    const/4 v0, 0x0

    move-object/16 v276, v0

    .local v276, "res":Ljava/lang/String;
    goto :goto_1f

    .line 581
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Ljava/lang/String;
    :pswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_27

    const/16 v205, 0x1

    .line 583
    .local v205, "foreground":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackageForBroadcast(Z)Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 584
    .local v276, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    move-object/from16 v0, p3

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    const/4 v6, 0x1

    return v6

    .line 582
    .end local v205    # "foreground":Z
    .end local v276    # "res":Ljava/lang/String;
    :cond_27
    const/16 v205, 0x0

    .restart local v205    # "foreground":Z
    goto :goto_20

    .line 590
    .end local v205    # "foreground":Z
    :pswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 592
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v187

    .line 593
    .local v187, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    move-object/from16 v0, v187

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 595
    const/4 v6, 0x1

    return v6

    .line 599
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v187    # "cn":Landroid/content/ComponentName;
    :pswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 601
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v232

    .line 602
    .local v232, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    if-eqz v232, :cond_28

    invoke-interface/range {v232 .. v232}, Ljava/util/List;->size()I

    move-result v167

    .line 604
    .local v167, "N":I
    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/16 v206, 0x0

    .local v206, "i":I
    :goto_22
    move/from16 v0, v206

    move/from16 v1, v167

    if-ge v0, v1, :cond_29

    .line 607
    move-object/from16 v0, v232

    move/from16 v1, v206

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v302, v0

    move-object/from16 v0, v302

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v302, v0

    .line 608
    .local v302, "task":Landroid/app/IAppTask;
    invoke-interface/range {v302 .. v302}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 606
    add-int/lit8 v206, v206, 0x1

    goto :goto_22

    .line 603
    .end local v167    # "N":I
    .end local v206    # "i":I
    .end local v302    # "task":Landroid/app/IAppTask;
    :cond_28
    const/16 v167, -0x1

    .restart local v167    # "N":I
    goto :goto_21

    .line 610
    .restart local v206    # "i":I
    :cond_29
    const/4 v6, 0x1

    return v6

    .line 614
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v167    # "N":I
    .end local v206    # "i":I
    .end local v232    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v170

    .line 616
    .local v170, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 618
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v192

    check-cast v192, Landroid/app/ActivityManager$TaskDescription;

    .line 619
    .local v192, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v305, v0

    move-object/from16 v0, v305

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v305, v0

    .line 620
    .local v305, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    move-object/from16 v2, v192

    move-object/from16 v3, v305

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v271, v0

    .line 621
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 623
    const/4 v6, 0x1

    return v6

    .line 627
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v170    # "activityToken":Landroid/os/IBinder;
    .end local v192    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v271    # "res":I
    .end local v305    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v289, v0

    .line 629
    .local v289, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 630
    const/4 v6, 0x0

    move-object/from16 v0, v289

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 631
    const/4 v6, 0x1

    return v6

    .line 635
    .end local v289    # "size":Landroid/graphics/Point;
    :pswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v237

    .line 637
    .local v237, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 638
    .local v83, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v237

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v230

    .line 639
    .local v230, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    if-eqz v230, :cond_2a

    invoke-interface/range {v230 .. v230}, Ljava/util/List;->size()I

    move-result v167

    .line 641
    .restart local v167    # "N":I
    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 643
    const/16 v206, 0x0

    .restart local v206    # "i":I
    :goto_24
    move/from16 v0, v206

    move/from16 v1, v167

    if-ge v0, v1, :cond_2b

    .line 644
    move-object/from16 v0, v230

    move/from16 v1, v206

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v212

    check-cast v212, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 645
    .local v212, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v212

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 643
    add-int/lit8 v206, v206, 0x1

    goto :goto_24

    .line 640
    .end local v167    # "N":I
    .end local v206    # "i":I
    .end local v212    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2a
    const/16 v167, -0x1

    .restart local v167    # "N":I
    goto :goto_23

    .line 647
    .restart local v206    # "i":I
    :cond_2b
    const/4 v6, 0x1

    return v6

    .line 651
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v206    # "i":I
    .end local v230    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v237    # "maxNum":I
    :pswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 653
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isPackageInForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v282, v0

    .line 654
    .restart local v282    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    move/from16 v0, v282

    if-eqz v0, :cond_2c

    const/4 v6, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/4 v6, 0x1

    return v6

    .line 655
    :cond_2c
    const/4 v6, 0x0

    goto :goto_25

    .line 660
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v282    # "result":Z
    :pswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v237

    .line 662
    .restart local v237    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 663
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 664
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v237

    move/from16 v2, v83

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v227

    .line 666
    .local v227, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    move-object/from16 v0, p3

    move-object/from16 v1, v227

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 668
    const/4 v6, 0x1

    return v6

    .line 672
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v227    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v237    # "maxNum":I
    :pswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v74

    .line 674
    .local v74, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v304, v0

    .line 675
    .local v304, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    move-object/from16 v0, v304

    if-eqz v0, :cond_2d

    .line 677
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v6, 0x1

    move-object/from16 v0, v304

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 682
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 680
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 686
    .end local v74    # "id":I
    .end local v304    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v237

    .line 688
    .restart local v237    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 689
    .restart local v83    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v237

    move/from16 v2, v83

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v229

    .line 690
    .local v229, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    if-eqz v229, :cond_2e

    invoke-interface/range {v229 .. v229}, Ljava/util/List;->size()I

    move-result v167

    .line 692
    .restart local v167    # "N":I
    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v167

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/16 v206, 0x0

    .restart local v206    # "i":I
    :goto_28
    move/from16 v0, v206

    move/from16 v1, v167

    if-ge v0, v1, :cond_2f

    .line 695
    move-object/from16 v0, v229

    move/from16 v1, v206

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 696
    .local v211, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v211

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 694
    add-int/lit8 v206, v206, 0x1

    goto :goto_28

    .line 691
    .end local v167    # "N":I
    .end local v206    # "i":I
    .end local v211    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2e
    const/16 v167, -0x1

    .restart local v167    # "N":I
    goto :goto_27

    .line 698
    .restart local v206    # "i":I
    :cond_2f
    const/4 v6, 0x1

    return v6

    .line 702
    .end local v83    # "fl":I
    .end local v167    # "N":I
    .end local v206    # "i":I
    .end local v229    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v237    # "maxNum":I
    :pswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v226

    .line 704
    .local v226, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move-object/from16 v1, v226

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 706
    const/4 v6, 0x1

    return v6

    .line 710
    .end local v226    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v228

    .line 712
    .local v228, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    move-object/from16 v1, v228

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 714
    const/4 v6, 0x1

    return v6

    .line 718
    .end local v228    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v233

    .line 720
    .local v233, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 721
    move-object/from16 v0, p3

    move-object/from16 v1, v233

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 722
    const/4 v6, 0x1

    return v6

    .line 726
    .end local v233    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v301, v0

    .line 728
    .local v301, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 729
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 730
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 731
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v301

    move/from16 v2, v83

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 732
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v6, 0x1

    return v6

    .line 730
    :cond_30
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_29

    .line 737
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v83    # "fl":I
    .end local v301    # "task":I
    :pswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 739
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v242, 0x1

    .line 740
    .local v242, "nonRoot":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v242

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v277, v0

    .line 741
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    move/from16 v0, v277

    if-eqz v0, :cond_32

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v6, 0x1

    return v6

    .line 739
    .end local v242    # "nonRoot":Z
    .end local v277    # "res":Z
    :cond_31
    const/16 v242, 0x0

    .restart local v242    # "nonRoot":Z
    goto :goto_2a

    .line 742
    .restart local v277    # "res":Z
    :cond_32
    const/4 v6, 0x0

    goto :goto_2b

    .line 747
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v242    # "nonRoot":Z
    .end local v277    # "res":Z
    :pswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v301, v0

    .line 749
    .restart local v301    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v301

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    const/4 v6, 0x1

    return v6

    .line 755
    .end local v301    # "task":I
    :pswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 757
    .restart local v303    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v294, v0

    .line 758
    .local v294, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    move/16 v306, v0

    .line 759
    .local v306, "toTop":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v303

    move/from16 v2, v294

    move/from16 v3, v306

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    const/4 v6, 0x1

    return v6

    .line 758
    .end local v306    # "toTop":Z
    :cond_33
    const/4 v0, 0x0

    move/16 v306, v0

    .restart local v306    # "toTop":Z
    goto :goto_2c

    .line 765
    .end local v294    # "stackId":I
    .end local v303    # "taskId":I
    .end local v306    # "toTop":Z
    :pswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v294, v0

    .line 767
    .restart local v294    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v266, v0

    move-object/from16 v0, v266

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v266, v0

    .line 768
    .local v266, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v294

    move-object/from16 v2, v266

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    const/4 v6, 0x1

    return v6

    .line 774
    .end local v266    # "r":Landroid/graphics/Rect;
    .end local v294    # "stackId":I
    :pswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v231

    .line 776
    .local v231, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    move-object/from16 v0, p3

    move-object/from16 v1, v231

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 778
    const/4 v6, 0x1

    return v6

    .line 782
    .end local v231    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v294, v0

    .line 784
    .restart local v294    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v294

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v213

    .line 785
    .local v213, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    if-eqz v213, :cond_34

    .line 787
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v6, 0x0

    move-object/from16 v0, v213

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 792
    :goto_2d
    const/4 v6, 0x1

    return v6

    .line 790
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 796
    .end local v213    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v294    # "stackId":I
    :pswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 798
    .restart local v303    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v219

    .line 799
    .local v219, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    if-eqz v219, :cond_35

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v6, 0x1

    return v6

    .line 800
    :cond_35
    const/4 v6, 0x0

    goto :goto_2e

    .line 805
    .end local v219    # "isInHomeStack":Z
    .end local v303    # "taskId":I
    :pswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v294, v0

    .line 807
    .restart local v294    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v294

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 808
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    const/4 v6, 0x1

    return v6

    .line 813
    .end local v294    # "stackId":I
    :pswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v204

    .line 815
    .local v204, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 816
    move-object/from16 v0, p3

    move/from16 v1, v204

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 817
    const/4 v6, 0x1

    return v6

    .line 821
    .end local v204    # "focusedStackId":I
    :pswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 823
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-static/range {v73 .. v73}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 824
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    const/4 v6, 0x1

    return v6

    .line 829
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 831
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v247, 0x1

    .line 832
    .local v247, "onlyRoot":Z
    :goto_2f
    if-eqz v73, :cond_37

    .line 833
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v247

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v271, v0

    .line 834
    .restart local v271    # "res":I
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v6, 0x1

    return v6

    .line 831
    .end local v247    # "onlyRoot":Z
    .end local v271    # "res":I
    :cond_36
    const/16 v247, 0x0

    .restart local v247    # "onlyRoot":Z
    goto :goto_2f

    .line 833
    :cond_37
    const/4 v0, -0x1

    move/16 v271, v0

    .restart local v271    # "res":I
    goto :goto_30

    .line 840
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v247    # "onlyRoot":Z
    .end local v271    # "res":I
    :pswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 842
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 843
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 844
    .local v107, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 845
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    const/4 v0, 0x1

    move/16 v293, v0

    .line 846
    .local v293, "stable":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move/from16 v2, v17

    move/from16 v3, v293

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v191

    .line 847
    .local v191, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    if-eqz v191, :cond_39

    .line 849
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    const/4 v6, 0x0

    move-object/from16 v0, v191

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 854
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 845
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v293    # "stable":Z
    :cond_38
    const/4 v0, 0x0

    move/16 v293, v0

    .restart local v293    # "stable":Z
    goto :goto_31

    .line 852
    .restart local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 858
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v107    # "name":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v293    # "stable":Z
    :pswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 860
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 861
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 862
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move/from16 v2, v17

    move-object/from16 v3, v73

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v191

    .line 863
    .restart local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    if-eqz v191, :cond_3a

    .line 865
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    const/4 v6, 0x0

    move-object/from16 v0, v191

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 870
    :goto_33
    const/4 v6, 0x1

    return v6

    .line 868
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 874
    .end local v17    # "userId":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 876
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 878
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v263, v0

    .line 879
    .local v263, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 880
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    const/4 v6, 0x1

    return v6

    .line 885
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v263    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 887
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v292, v0

    .line 888
    .local v292, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v308, v0

    .line 889
    .local v308, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, v292

    move/from16 v3, v308

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v277, v0

    .line 890
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    move/from16 v0, v277

    if-eqz v0, :cond_3b

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    const/4 v6, 0x1

    return v6

    .line 891
    :cond_3b
    const/4 v6, 0x0

    goto :goto_34

    .line 896
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v277    # "res":Z
    .end local v292    # "stable":I
    .end local v308    # "unstable":I
    :pswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 898
    .restart local v179    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    const/4 v6, 0x1

    return v6

    .line 904
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 905
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 906
    .restart local v179    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    const/4 v6, 0x1

    return v6

    .line 912
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 914
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v0, 0x1

    move/16 v293, v0

    .line 915
    .restart local v293    # "stable":Z
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, v293

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    const/4 v6, 0x1

    return v6

    .line 914
    .end local v293    # "stable":Z
    :cond_3c
    const/4 v0, 0x0

    move/16 v293, v0

    .restart local v293    # "stable":Z
    goto :goto_35

    .line 921
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v293    # "stable":Z
    :pswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 923
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 924
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    const/4 v6, 0x1

    return v6

    .line 930
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v107    # "name":Ljava/lang/String;
    :pswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 931
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v188

    check-cast v188, Landroid/content/ComponentName;

    .line 932
    .local v188, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v257, v0

    .line 933
    .local v257, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    move-object/from16 v0, v257

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 935
    const/4 v6, 0x1

    return v6

    .line 939
    .end local v188    # "comp":Landroid/content/ComponentName;
    .end local v257    # "pi":Landroid/app/PendingIntent;
    :pswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 941
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 942
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 943
    .local v70, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 944
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 945
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move-object/from16 v71, v10

    move-object/from16 v72, v8

    move/from16 v73, v17

    .line 946
    invoke-virtual/range {v68 .. v73}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v187

    .line 947
    .restart local v187    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    move-object/from16 v0, v187

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 949
    const/4 v6, 0x1

    return v6

    .line 953
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v187    # "cn":Landroid/content/ComponentName;
    :pswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 955
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 956
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 957
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 958
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 959
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v271, v0

    .line 960
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    const/4 v6, 0x1

    return v6

    .line 966
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v271    # "res":I
    :pswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 967
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 968
    .local v72, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 969
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 970
    .local v295, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    move/from16 v3, v295

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v277, v0

    .line 971
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 972
    move/from16 v0, v277

    if-eqz v0, :cond_3d

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    const/4 v6, 0x1

    return v6

    .line 972
    :cond_3d
    const/4 v6, 0x0

    goto :goto_36

    .line 977
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v277    # "res":Z
    .end local v295    # "startId":I
    :pswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 978
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 979
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 980
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v74

    .line 981
    .restart local v74    # "id":I
    const/16 v75, 0x0

    .line 982
    .local v75, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 983
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v75

    .end local v75    # "notification":Landroid/app/Notification;
    check-cast v75, Landroid/app/Notification;

    .line 985
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v76, 0x1

    .local v76, "removeNotification":Z
    :goto_37
    move-object/from16 v71, p0

    .line 986
    invoke-virtual/range {v71 .. v76}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 988
    const/4 v6, 0x1

    return v6

    .line 985
    .end local v76    # "removeNotification":Z
    :cond_3f
    const/16 v76, 0x0

    .restart local v76    # "removeNotification":Z
    goto :goto_37

    .line 992
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v74    # "id":I
    .end local v76    # "removeNotification":Z
    :pswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 994
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 995
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 996
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 997
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 998
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1000
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1001
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1002
    .restart local v17    # "userId":I
    invoke-static/range {v179 .. v179}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v82

    .local v82, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move-object/from16 v79, v73

    move-object/from16 v80, v70

    move-object/from16 v81, v10

    move-object/from16 v84, v8

    move/from16 v85, v17

    .line 1003
    invoke-virtual/range {v77 .. v85}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v271, v0

    .line 1005
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v6, 0x1

    return v6

    .line 1011
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v70    # "service":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v83    # "fl":I
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v271    # "res":I
    :pswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1013
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v82

    .line 1014
    .restart local v82    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v277, v0

    .line 1015
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    move/from16 v0, v277

    if-eqz v0, :cond_40

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    const/4 v6, 0x1

    return v6

    .line 1016
    :cond_40
    const/4 v6, 0x0

    goto :goto_38

    .line 1021
    .end local v82    # "conn":Landroid/app/IServiceConnection;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v277    # "res":Z
    :pswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1023
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1024
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v287, v0

    .line 1025
    .local v287, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v287

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1026
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    const/4 v6, 0x1

    return v6

    .line 1031
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v287    # "service":Landroid/os/IBinder;
    :pswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1032
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1033
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1034
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v196, 0x1

    .line 1035
    .local v196, "doRebind":Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v196

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    const/4 v6, 0x1

    return v6

    .line 1034
    .end local v196    # "doRebind":Z
    :cond_41
    const/16 v196, 0x0

    .restart local v196    # "doRebind":Z
    goto :goto_39

    .line 1041
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v196    # "doRebind":Z
    :pswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1043
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1044
    .local v94, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 1045
    .restart local v295    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v271, v0

    .line 1046
    .restart local v271    # "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v94

    move/from16 v3, v295

    move/from16 v4, v271

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    const/4 v6, 0x1

    return v6

    .line 1052
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v94    # "type":I
    .end local v271    # "res":I
    .end local v295    # "startId":I
    :pswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1053
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v72

    .line 1054
    .restart local v72    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v86

    .line 1055
    .local v86, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1056
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v88

    .line 1057
    .local v88, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1058
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v89

    .line 1059
    .local v89, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1060
    invoke-static/range {v179 .. v179}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v90

    .line 1061
    .local v90, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1062
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v92

    .local v92, "abiOverride":Ljava/lang/String;
    move-object/from16 v84, p0

    move-object/from16 v85, v72

    move/from16 v87, v83

    move/from16 v91, v17

    .line 1063
    invoke-virtual/range {v84 .. v92}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v277, v0

    .line 1065
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    move/from16 v0, v277

    if-eqz v0, :cond_42

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    const/4 v6, 0x1

    return v6

    .line 1066
    :cond_42
    const/4 v6, 0x0

    goto :goto_3a

    .line 1072
    .end local v17    # "userId":I
    .end local v72    # "className":Landroid/content/ComponentName;
    .end local v83    # "fl":I
    .end local v86    # "profileFile":Ljava/lang/String;
    .end local v88    # "arguments":Landroid/os/Bundle;
    .end local v89    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v90    # "c":Landroid/app/IUiAutomationConnection;
    .end local v92    # "abiOverride":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v277    # "res":Z
    :pswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1073
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1074
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1075
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1076
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v285, v0

    .line 1077
    .local v285, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v285

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    const/4 v6, 0x1

    return v6

    .line 1083
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v285    # "results":Landroid/os/Bundle;
    :pswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1084
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1085
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1087
    const/4 v6, 0x1

    return v6

    .line 1091
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1092
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1093
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1094
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1095
    const/4 v6, 0x1

    return v6

    .line 1099
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1100
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1101
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v270, v0

    .line 1102
    .local v270, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v270

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    const/4 v6, 0x1

    return v6

    .line 1108
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v270    # "requestedOrientation":I
    :pswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1110
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v269, v0

    .line 1111
    .local v269, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    move-object/from16 v0, p3

    move/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1113
    const/4 v6, 0x1

    return v6

    .line 1117
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v269    # "req":I
    :pswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1119
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v187

    .line 1120
    .restart local v187    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    move-object/from16 v0, v187

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1122
    const/4 v6, 0x1

    return v6

    .line 1126
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v187    # "cn":Landroid/content/ComponentName;
    :pswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1128
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1130
    const/4 v6, 0x1

    return v6

    .line 1134
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 1136
    .restart local v94    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1137
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1138
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1139
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1142
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1143
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v99

    check-cast v99, [Landroid/content/Intent;

    .line 1144
    .local v99, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v100

    .line 1149
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 1150
    .restart local v83    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    .line 1151
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1152
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v93, p0

    move-object/from16 v95, v32

    move-object/from16 v96, v73

    move-object/from16 v97, v12

    move/from16 v98, v13

    move/from16 v101, v83

    move-object/from16 v102, v16

    move/from16 v103, v17

    .line 1153
    invoke-virtual/range {v93 .. v103}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v274, v0

    .line 1156
    .local v274, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v0, v274

    if-eqz v0, :cond_45

    invoke-interface/range {v274 .. v274}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1158
    const/4 v6, 0x1

    return v6

    .line 1146
    .end local v17    # "userId":I
    .end local v83    # "fl":I
    .end local v274    # "res":Landroid/content/IIntentSender;
    :cond_43
    const/16 v99, 0x0

    .line 1147
    .local v99, "requestIntents":[Landroid/content/Intent;
    const/16 v100, 0x0

    .local v100, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3b

    .line 1151
    .end local v99    # "requestIntents":[Landroid/content/Intent;
    .end local v100    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v83    # "fl":I
    :cond_44
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_3c

    .line 1157
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v274    # "res":Landroid/content/IIntentSender;
    :cond_45
    const/4 v6, 0x0

    goto :goto_3d

    .line 1162
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v83    # "fl":I
    .end local v94    # "type":I
    .end local v274    # "res":Landroid/content/IIntentSender;
    :pswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1163
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1165
    .local v265, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1167
    const/4 v6, 0x1

    return v6

    .line 1171
    .end local v265    # "r":Landroid/content/IIntentSender;
    :pswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1172
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1174
    .restart local v265    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 1175
    .restart local v276    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1176
    move-object/from16 v0, p3

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1177
    const/4 v6, 0x1

    return v6

    .line 1181
    .end local v265    # "r":Landroid/content/IIntentSender;
    .end local v276    # "res":Ljava/lang/String;
    :pswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1182
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 1184
    .restart local v265    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v271, v0

    .line 1185
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1186
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1187
    const/4 v6, 0x1

    return v6

    .line 1191
    .end local v265    # "r":Landroid/content/IIntentSender;
    .end local v271    # "res":I
    :pswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1193
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1194
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1195
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v105, 0x1

    .line 1196
    .local v105, "allowAll":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v106, 0x1

    .line 1197
    .local v106, "requireFull":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1198
    .restart local v107    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v108

    .local v108, "callerPackage":Ljava/lang/String;
    move-object/from16 v101, p0

    move/from16 v102, v42

    move/from16 v103, v43

    move/from16 v104, v17

    .line 1199
    invoke-virtual/range {v101 .. v108}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v271, v0

    .line 1201
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    const/4 v6, 0x1

    return v6

    .line 1195
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    .end local v107    # "name":Ljava/lang/String;
    .end local v108    # "callerPackage":Ljava/lang/String;
    .end local v271    # "res":I
    :cond_46
    const/16 v105, 0x0

    .restart local v105    # "allowAll":Z
    goto :goto_3e

    .line 1196
    :cond_47
    const/16 v106, 0x0

    .restart local v106    # "requireFull":Z
    goto :goto_3f

    .line 1207
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v105    # "allowAll":Z
    .end local v106    # "requireFull":Z
    :pswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v236

    .line 1209
    .local v236, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v236

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    const/4 v6, 0x1

    return v6

    .line 1215
    .end local v236    # "max":I
    :pswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v225

    .line 1217
    .local v225, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    move-object/from16 v0, p3

    move/from16 v1, v225

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    const/4 v6, 0x1

    return v6

    .line 1223
    .end local v225    # "limit":I
    :pswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1225
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1226
    .local v111, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v218, 0x1

    .line 1227
    .local v218, "isForeground":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v111

    move/from16 v3, v218

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1229
    const/4 v6, 0x1

    return v6

    .line 1226
    .end local v218    # "isForeground":Z
    :cond_48
    const/16 v218, 0x0

    .restart local v218    # "isForeground":Z
    goto :goto_40

    .line 1233
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v218    # "isForeground":Z
    :pswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1235
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1236
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1237
    .local v112, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v111

    move/from16 v3, v112

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v271, v0

    .line 1238
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1239
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    const/4 v6, 0x1

    return v6

    .line 1244
    .end local v35    # "perm":Ljava/lang/String;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v271    # "res":I
    :pswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1246
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1247
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1248
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1249
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v111

    move/from16 v3, v112

    move-object/from16 v4, v73

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v271, v0

    .line 1250
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1251
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    const/4 v6, 0x1

    return v6

    .line 1256
    .end local v35    # "perm":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v271    # "res":I
    :pswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1258
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 1259
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1260
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1261
    .local v113, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1262
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v115

    .local v115, "callerToken":Landroid/os/IBinder;
    move-object/from16 v109, p0

    move/from16 v114, v17

    .line 1263
    invoke-virtual/range {v109 .. v115}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v271, v0

    .line 1264
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    const/4 v6, 0x1

    return v6

    .line 1270
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v111    # "pid":I
    .end local v112    # "uid":I
    .end local v113    # "mode":I
    .end local v115    # "callerToken":Landroid/os/IBinder;
    .end local v271    # "res":I
    :pswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1273
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1272
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v246

    .line 1274
    .local v246, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1275
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v246

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v277, v0

    .line 1276
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    move/from16 v0, v277

    if-eqz v0, :cond_49

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    const/4 v6, 0x1

    return v6

    .line 1277
    :cond_49
    const/4 v6, 0x0

    goto :goto_41

    .line 1282
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v246    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v277    # "res":Z
    :pswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1284
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1285
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1286
    .local v118, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1287
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1288
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v116, p0

    move-object/from16 v117, v7

    move-object/from16 v119, v110

    move/from16 v120, v113

    move/from16 v121, v17

    .line 1289
    invoke-virtual/range {v116 .. v121}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    const/4 v6, 0x1

    return v6

    .line 1295
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1297
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1298
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1299
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1300
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1301
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    const/4 v6, 0x1

    return v6

    .line 1307
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1309
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1310
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1311
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    const/4 v6, 0x1

    return v6

    .line 1317
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :pswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1319
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1320
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1321
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v113

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1323
    const/4 v6, 0x1

    return v6

    .line 1327
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    :pswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1329
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v209, 0x1

    .line 1330
    .local v209, "incoming":Z
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v254

    .line 1332
    .local v254, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    const/4 v6, 0x1

    move-object/from16 v0, v254

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1334
    const/4 v6, 0x1

    return v6

    .line 1329
    .end local v209    # "incoming":Z
    .end local v254    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_4a
    const/16 v209, 0x0

    .restart local v209    # "incoming":Z
    goto :goto_42

    .line 1338
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v209    # "incoming":Z
    :pswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1340
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1341
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/4 v0, 0x1

    move/16 v313, v0

    .line 1342
    .local v313, "waiting":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v313

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    const/4 v6, 0x1

    return v6

    .line 1341
    .end local v313    # "waiting":Z
    :cond_4b
    const/4 v0, 0x0

    move/16 v313, v0

    .restart local v313    # "waiting":Z
    goto :goto_43

    .line 1348
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v179    # "b":Landroid/os/IBinder;
    .end local v313    # "waiting":Z
    :pswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1349
    new-instance v239, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v239 .. v239}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1350
    .local v239, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    const/4 v6, 0x0

    move-object/from16 v0, v239

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1353
    const/4 v6, 0x1

    return v6

    .line 1357
    .end local v239    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1358
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    const/4 v6, 0x1

    return v6

    .line 1364
    :pswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v110

    .line 1366
    .restart local v110    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v256, v0

    .line 1367
    .local v256, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    move-object/from16 v0, v256

    if-eqz v0, :cond_4c

    .line 1369
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    const/4 v6, 0x1

    move-object/from16 v0, v256

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1374
    :goto_44
    const/4 v6, 0x1

    return v6

    .line 1372
    :cond_4c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1378
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v256    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1379
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1381
    const/4 v6, 0x1

    return v6

    .line 1379
    :cond_4d
    const/4 v6, 0x0

    goto :goto_45

    .line 1385
    :pswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v260, v0

    .line 1387
    .local v260, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    move/16 v315, v0

    .line 1388
    .local v315, "wfd":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v252, 0x1

    .line 1389
    .local v252, "per":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v260

    move/from16 v2, v315

    move/from16 v3, v252

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1391
    const/4 v6, 0x1

    return v6

    .line 1387
    .end local v252    # "per":Z
    .end local v315    # "wfd":Z
    :cond_4e
    const/4 v0, 0x0

    move/16 v315, v0

    .restart local v315    # "wfd":Z
    goto :goto_46

    .line 1388
    :cond_4f
    const/16 v252, 0x0

    .restart local v252    # "per":Z
    goto :goto_47

    .line 1395
    .end local v252    # "per":Z
    .end local v260    # "pn":Ljava/lang/String;
    .end local v315    # "wfd":Z
    :pswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/16 v198, 0x1

    .line 1397
    .local v198, "enabled":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v198

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    const/4 v6, 0x1

    return v6

    .line 1396
    .end local v198    # "enabled":Z
    :cond_50
    const/16 v198, 0x0

    .restart local v198    # "enabled":Z
    goto :goto_48

    .line 1403
    .end local v198    # "enabled":Z
    :pswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1404
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v314, v0

    .line 1406
    .local v314, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v314

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    const/4 v6, 0x1

    return v6

    .line 1412
    .end local v314    # "watcher":Landroid/app/IActivityController;
    :pswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1415
    const/4 v6, 0x1

    return v6

    .line 1419
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1420
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v217

    .line 1422
    .local v217, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v291, v0

    .line 1423
    .local v291, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v290, v0

    .line 1424
    .local v290, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v299, v0

    .line 1425
    .local v299, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v291

    move-object/from16 v3, v290

    move-object/from16 v4, v299

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1426
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1427
    const/4 v6, 0x1

    return v6

    .line 1431
    .end local v217    # "is":Landroid/content/IIntentSender;
    .end local v290    # "sourcePkg":Ljava/lang/String;
    .end local v291    # "sourceUid":I
    .end local v299    # "tag":Ljava/lang/String;
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1432
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v217

    .line 1434
    .restart local v217    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v291, v0

    .line 1435
    .restart local v291    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v299, v0

    .line 1436
    .restart local v299    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v291

    move-object/from16 v3, v299

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1438
    const/4 v6, 0x1

    return v6

    .line 1442
    .end local v217    # "is":Landroid/content/IIntentSender;
    .end local v291    # "sourceUid":I
    .end local v299    # "tag":Ljava/lang/String;
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1443
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v217

    .line 1445
    .restart local v217    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v291, v0

    .line 1446
    .restart local v291    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v299, v0

    .line 1447
    .restart local v299    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v291

    move-object/from16 v3, v299

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    const/4 v6, 0x1

    return v6

    .line 1453
    .end local v217    # "is":Landroid/content/IIntentSender;
    .end local v291    # "sourceUid":I
    .end local v299    # "tag":Ljava/lang/String;
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v258, v0

    .line 1455
    .local v258, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 1456
    .local v267, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/4 v0, 0x1

    move/16 v286, v0

    .line 1457
    .local v286, "secure":Z
    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    move-object/from16 v2, v267

    move/from16 v3, v286

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v277, v0

    .line 1458
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1459
    move/from16 v0, v277

    if-eqz v0, :cond_52

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    const/4 v6, 0x1

    return v6

    .line 1456
    .end local v277    # "res":Z
    .end local v286    # "secure":Z
    :cond_51
    const/4 v0, 0x0

    move/16 v286, v0

    .restart local v286    # "secure":Z
    goto :goto_49

    .line 1459
    .restart local v277    # "res":Z
    :cond_52
    const/4 v6, 0x0

    goto :goto_4a

    .line 1464
    .end local v258    # "pids":[I
    .end local v267    # "reason":Ljava/lang/String;
    .end local v277    # "res":Z
    .end local v286    # "secure":Z
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 1466
    .restart local v267    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v277, v0

    .line 1467
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    move/from16 v0, v277

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    const/4 v6, 0x1

    return v6

    .line 1468
    :cond_53
    const/4 v6, 0x0

    goto :goto_4b

    .line 1473
    .end local v267    # "reason":Ljava/lang/String;
    .end local v277    # "res":Z
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v174

    .line 1475
    .local v174, "app":Landroid/os/IBinder;
    new-instance v186, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v186

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1476
    .local v186, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move-object/from16 v2, v186

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    const/4 v6, 0x1

    return v6

    .line 1482
    .end local v174    # "app":Landroid/os/IBinder;
    .end local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v174

    .line 1484
    .restart local v174    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v299, v0

    .line 1485
    .restart local v299    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/4 v0, 0x1

    move/16 v298, v0

    .line 1486
    .local v298, "system":Z
    :goto_4c
    new-instance v186, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v186

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1487
    .restart local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move-object/from16 v2, v299

    move/from16 v3, v298

    move-object/from16 v4, v186

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v277, v0

    .line 1488
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move/from16 v0, v277

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    const/4 v6, 0x1

    return v6

    .line 1485
    .end local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v277    # "res":Z
    .end local v298    # "system":Z
    :cond_54
    const/4 v0, 0x0

    move/16 v298, v0

    .restart local v298    # "system":Z
    goto :goto_4c

    .line 1489
    .restart local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v277    # "res":Z
    :cond_55
    const/4 v6, 0x0

    goto :goto_4d

    .line 1494
    .end local v174    # "app":Landroid/os/IBinder;
    .end local v186    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v277    # "res":Z
    .end local v298    # "system":Z
    .end local v299    # "tag":Ljava/lang/String;
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v174

    .line 1496
    .restart local v174    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v312, v0

    .line 1497
    .local v312, "violationMask":I
    new-instance v215, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v215

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1498
    .local v215, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, v312

    move-object/from16 v3, v215

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    const/4 v6, 0x1

    return v6

    .line 1504
    .end local v174    # "app":Landroid/os/IBinder;
    .end local v215    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v312    # "violationMask":I
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v288, v0

    .line 1506
    .local v288, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v288

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1507
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1508
    const/4 v6, 0x1

    return v6

    .line 1512
    .end local v288    # "sig":I
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1514
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1515
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    const/4 v6, 0x1

    return v6

    .line 1521
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1522
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1524
    const/4 v6, 0x1

    return v6

    .line 1528
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1530
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1531
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1533
    const/4 v6, 0x1

    return v6

    .line 1537
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1539
    new-instance v210, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v210 .. v210}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1540
    .local v210, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    const/4 v6, 0x0

    move-object/from16 v0, v210

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1543
    const/4 v6, 0x1

    return v6

    .line 1547
    .end local v210    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v189

    .line 1549
    .local v189, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1550
    const/4 v6, 0x0

    move-object/from16 v0, v189

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1551
    const/4 v6, 0x1

    return v6

    .line 1555
    .end local v189    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1557
    .local v120, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1558
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/16 v122, 0x1

    .line 1559
    .local v122, "start":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v124

    .line 1560
    .local v124, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    .line 1561
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    :goto_4f
    move-object/from16 v119, p0

    move/from16 v121, v17

    move-object/from16 v123, v15

    .line 1562
    invoke-virtual/range {v119 .. v124}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v277, v0

    .line 1563
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1564
    move/from16 v0, v277

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1565
    const/4 v6, 0x1

    return v6

    .line 1558
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v277    # "res":Z
    :cond_56
    const/16 v122, 0x0

    .restart local v122    # "start":Z
    goto :goto_4e

    .line 1561
    .restart local v124    # "profileType":I
    :cond_57
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4f

    .line 1564
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v277    # "res":Z
    :cond_58
    const/4 v6, 0x0

    goto :goto_50

    .line 1569
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v122    # "start":Z
    .end local v124    # "profileType":I
    .end local v277    # "res":Z
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v277, v0

    .line 1571
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    move/from16 v0, v277

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    const/4 v6, 0x1

    return v6

    .line 1572
    :cond_59
    const/4 v6, 0x0

    goto :goto_51

    .line 1577
    .end local v277    # "res":Z
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1579
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    const/4 v6, 0x1

    return v6

    .line 1584
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    const/4 v6, 0x1

    return v6

    .line 1591
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1592
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/Intent;

    .line 1593
    .restart local v70    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1594
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1595
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v181

    .line 1596
    .local v181, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1598
    const/4 v6, 0x1

    return v6

    .line 1602
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v70    # "service":Landroid/content/Intent;
    .end local v181    # "binder":Landroid/os/IBinder;
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v214

    check-cast v214, Landroid/content/pm/ApplicationInfo;

    .line 1604
    .local v214, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v180

    .line 1605
    .local v180, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v214

    move/from16 v2, v180

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v0

    move/16 v297, v0

    .line 1606
    .local v297, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    move/from16 v0, v297

    if-eqz v0, :cond_5a

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    const/4 v6, 0x1

    return v6

    .line 1607
    :cond_5a
    const/4 v6, 0x0

    goto :goto_52

    .line 1612
    .end local v180    # "backupRestoreMode":I
    .end local v214    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v297    # "success":Z
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1614
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v171

    .line 1615
    .local v171, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v171

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1617
    const/4 v6, 0x1

    return v6

    .line 1621
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v171    # "agent":Landroid/os/IBinder;
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v214

    check-cast v214, Landroid/content/pm/ApplicationInfo;

    .line 1623
    .restart local v214    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v214

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1624
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1625
    const/4 v6, 0x1

    return v6

    .line 1629
    .end local v214    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1631
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1633
    const/4 v6, 0x1

    return v6

    .line 1637
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1639
    .local v259, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v176

    .line 1640
    .local v176, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 1641
    .restart local v267    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    move/from16 v2, v176

    move-object/from16 v3, v267

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    const/4 v6, 0x1

    return v6

    .line 1647
    .end local v176    # "appid":I
    .end local v259    # "pkg":Ljava/lang/String;
    .end local v267    # "reason":Ljava/lang/String;
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1648
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 1649
    .restart local v267    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1651
    const/4 v6, 0x1

    return v6

    .line 1655
    .end local v267    # "reason":Ljava/lang/String;
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v258, v0

    .line 1657
    .restart local v258    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v278, v0

    .line 1658
    .local v278, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v278

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1660
    const/4 v6, 0x1

    return v6

    .line 1664
    .end local v258    # "pids":[I
    .end local v278    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v262, v0

    .line 1666
    .local v262, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1667
    .restart local v112    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v262

    move/from16 v2, v112

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    const/4 v6, 0x1

    return v6

    .line 1673
    .end local v112    # "uid":I
    .end local v262    # "processName":Ljava/lang/String;
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1675
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1676
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 1677
    .local v199, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1678
    .local v200, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v32

    move/from16 v3, v199

    move/from16 v4, v200

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    const/4 v6, 0x1

    return v6

    .line 1684
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v199    # "enterAnim":I
    .end local v200    # "exitAnim":I
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1685
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v177

    .line 1686
    .local v177, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1687
    if-eqz v177, :cond_5b

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1688
    const/4 v6, 0x1

    return v6

    .line 1687
    :cond_5b
    const/4 v6, 0x0

    goto :goto_53

    .line 1692
    .end local v177    # "areThey":Z
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5c

    const/16 v240, 0x1

    .line 1694
    .local v240, "monkey":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v240

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    const/4 v6, 0x1

    return v6

    .line 1693
    .end local v240    # "monkey":Z
    :cond_5c
    const/16 v240, 0x0

    .restart local v240    # "monkey":Z
    goto :goto_54

    .line 1700
    .end local v240    # "monkey":Z
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    const/4 v6, 0x1

    return v6

    .line 1707
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1709
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v222

    .line 1710
    .local v222, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1711
    if-eqz v222, :cond_5d

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    const/4 v6, 0x1

    return v6

    .line 1711
    :cond_5d
    const/4 v6, 0x0

    goto :goto_55

    .line 1716
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v222    # "isit":Z
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1717
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1718
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v221

    .line 1719
    .local v221, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    if-eqz v221, :cond_5e

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1721
    const/4 v6, 0x1

    return v6

    .line 1720
    :cond_5e
    const/4 v6, 0x0

    goto :goto_56

    .line 1725
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v221    # "isTopOfTask":Z
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1727
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v190

    .line 1728
    .local v190, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    if-eqz v190, :cond_5f

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    const/4 v6, 0x1

    return v6

    .line 1729
    :cond_5f
    const/4 v6, 0x0

    goto :goto_57

    .line 1734
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v190    # "converted":Z
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1737
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_60

    .line 1738
    const/16 v182, 0x0

    .line 1742
    :goto_58
    if-nez v182, :cond_61

    const/16 v248, 0x0

    .line 1743
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v248

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v190

    .line 1744
    .restart local v190    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1745
    if-eqz v190, :cond_62

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    const/4 v6, 0x1

    return v6

    .line 1740
    .end local v190    # "converted":Z
    :cond_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v182

    .local v182, "bundle":Landroid/os/Bundle;
    goto :goto_58

    .line 1742
    .end local v182    # "bundle":Landroid/os/Bundle;
    :cond_61
    new-instance v248, Landroid/app/ActivityOptions;

    move-object/from16 v0, v248

    move-object/from16 v1, v182

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .local v248, "options":Landroid/app/ActivityOptions;
    goto :goto_59

    .line 1745
    .end local v248    # "options":Landroid/app/ActivityOptions;
    .restart local v190    # "converted":Z
    :cond_62
    const/4 v6, 0x0

    goto :goto_5a

    .line 1750
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v190    # "converted":Z
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1752
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v248

    .line 1753
    .restart local v248    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1754
    if-nez v248, :cond_63

    const/4 v6, 0x0

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1755
    const/4 v6, 0x1

    return v6

    .line 1754
    :cond_63
    invoke-virtual/range {v248 .. v248}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5b

    .line 1759
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v248    # "options":Landroid/app/ActivityOptions;
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1761
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_64

    const/16 v208, 0x1

    .line 1762
    .local v208, "imm":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v208

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1763
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1764
    const/4 v6, 0x1

    return v6

    .line 1761
    .end local v208    # "imm":Z
    :cond_64
    const/16 v208, 0x0

    .restart local v208    # "imm":Z
    goto :goto_5c

    .line 1768
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v208    # "imm":Z
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v222

    .line 1770
    .restart local v222    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1771
    if-eqz v222, :cond_65

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1772
    const/4 v6, 0x1

    return v6

    .line 1771
    :cond_65
    const/4 v6, 0x0

    goto :goto_5d

    .line 1776
    .end local v222    # "isit":Z
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 1778
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v216

    .line 1779
    .local v216, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1780
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v238

    .line 1781
    .local v238, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v112

    move/from16 v2, v216

    move-object/from16 v3, v32

    move-object/from16 v4, v238

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    const/4 v6, 0x1

    return v6

    .line 1787
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v112    # "uid":I
    .end local v216    # "initialPid":I
    .end local v238    # "message":Ljava/lang/String;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1788
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1789
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1790
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/16 v307, v0

    .line 1791
    .local v307, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    move-object/from16 v0, p3

    move-object/from16 v1, v307

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1793
    const/4 v6, 0x1

    return v6

    .line 1797
    .end local v17    # "userId":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v307    # "type":Ljava/lang/String;
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 1799
    .restart local v107    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v253

    .line 1800
    .local v253, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    move-object/from16 v0, p3

    move-object/from16 v1, v253

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1802
    const/4 v6, 0x1

    return v6

    .line 1806
    .end local v107    # "name":Ljava/lang/String;
    .end local v253    # "perm":Landroid/os/IBinder;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 1808
    .local v126, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 1809
    .local v127, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1810
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1811
    .restart local v110    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1812
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v131

    .line 1813
    .local v131, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v132

    .local v132, "targetUserId":I
    move-object/from16 v125, p0

    move-object/from16 v128, v118

    move-object/from16 v129, v110

    move/from16 v130, v113

    .line 1814
    invoke-virtual/range {v125 .. v132}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1817
    const/4 v6, 0x1

    return v6

    .line 1821
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v113    # "mode":I
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v126    # "owner":Landroid/os/IBinder;
    .end local v127    # "fromUid":I
    .end local v131    # "sourceUserId":I
    .end local v132    # "targetUserId":I
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 1823
    .restart local v126    # "owner":Landroid/os/IBinder;
    const/16 v110, 0x0

    .line 1824
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    .line 1825
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    .end local v110    # "uri":Landroid/net/Uri;
    check-cast v110, Landroid/net/Uri;

    .line 1827
    :cond_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1828
    .restart local v113    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1829
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    move-object/from16 v2, v110

    move/from16 v3, v113

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    const/4 v6, 0x1

    return v6

    .line 1835
    .end local v17    # "userId":I
    .end local v113    # "mode":I
    .end local v126    # "owner":Landroid/os/IBinder;
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1837
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v118

    .line 1838
    .restart local v118    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/net/Uri;

    .line 1839
    .local v110, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 1840
    .local v137, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v133, p0

    move/from16 v134, v43

    move-object/from16 v135, v118

    move-object/from16 v136, v110

    move/from16 v138, v17

    .line 1841
    invoke-virtual/range {v133 .. v138}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v271, v0

    .line 1842
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1843
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1844
    const/4 v6, 0x1

    return v6

    .line 1848
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v110    # "uri":Landroid/net/Uri;
    .end local v118    # "targetPkg":Ljava/lang/String;
    .end local v137    # "modeFlags":I
    .end local v271    # "res":I
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 1850
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1851
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/16 v141, 0x1

    .line 1852
    .local v141, "managed":Z
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 1853
    .local v142, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    .line 1854
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/os/ParcelFileDescriptor;

    :goto_5f
    move-object/from16 v138, p0

    move-object/from16 v139, v120

    move/from16 v140, v17

    .line 1855
    invoke-virtual/range {v138 .. v143}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v277, v0

    .line 1856
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1857
    move/from16 v0, v277

    if-eqz v0, :cond_69

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1858
    const/4 v6, 0x1

    return v6

    .line 1851
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v277    # "res":Z
    :cond_67
    const/16 v141, 0x0

    .restart local v141    # "managed":Z
    goto :goto_5e

    .line 1854
    .restart local v142    # "path":Ljava/lang/String;
    :cond_68
    const/16 v143, 0x0

    .local v143, "fd":Landroid/os/ParcelFileDescriptor;
    goto :goto_5f

    .line 1857
    .end local v143    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v277    # "res":Z
    :cond_69
    const/4 v6, 0x0

    goto :goto_60

    .line 1863
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v141    # "managed":Z
    .end local v142    # "path":Ljava/lang/String;
    .end local v277    # "res":Z
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v179

    .line 1865
    .restart local v179    # "b":Landroid/os/IBinder;
    invoke-static/range {v179 .. v179}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1866
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1867
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v147

    check-cast v147, [Landroid/content/Intent;

    .line 1868
    .local v147, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v148

    .line 1869
    .local v148, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1870
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    .line 1871
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1872
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v144, p0

    move-object/from16 v145, v7

    move-object/from16 v146, v8

    move-object/from16 v149, v11

    move-object/from16 v150, v16

    move/from16 v151, v17

    .line 1873
    invoke-virtual/range {v144 .. v151}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v280, v0

    .line 1875
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1877
    const/4 v6, 0x1

    return v6

    .line 1871
    .end local v17    # "userId":I
    .end local v280    # "result":I
    :cond_6a
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_61

    .line 1882
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v147    # "intents":[Landroid/content/Intent;
    .end local v148    # "resolvedTypes":[Ljava/lang/String;
    .end local v179    # "b":Landroid/os/IBinder;
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1883
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v113

    .line 1884
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1885
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1886
    const/4 v6, 0x1

    return v6

    .line 1891
    .end local v113    # "mode":I
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1892
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1893
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    const/4 v6, 0x1

    return v6

    .line 1901
    .end local v113    # "mode":I
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1903
    .restart local v259    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v113

    .line 1904
    .restart local v113    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1905
    move-object/from16 v0, p3

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1906
    const/4 v6, 0x1

    return v6

    .line 1911
    .end local v113    # "mode":I
    .end local v259    # "pkg":Ljava/lang/String;
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1912
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1913
    .restart local v259    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 1914
    .restart local v113    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    move/from16 v2, v113

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1916
    const/4 v6, 0x1

    return v6

    .line 1920
    .end local v113    # "mode":I
    .end local v259    # "pkg":Ljava/lang/String;
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 1922
    .local v310, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v282, v0

    .line 1923
    .restart local v282    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move/from16 v0, v282

    if-eqz v0, :cond_6b

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    const/4 v6, 0x1

    return v6

    .line 1924
    :cond_6b
    const/4 v6, 0x0

    goto :goto_62

    .line 1929
    .end local v282    # "result":Z
    .end local v310    # "userid":I
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 1931
    .restart local v310    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v282, v0

    .line 1932
    .restart local v282    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    move/from16 v0, v282

    if-eqz v0, :cond_6c

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1934
    const/4 v6, 0x1

    return v6

    .line 1933
    :cond_6c
    const/4 v6, 0x0

    goto :goto_63

    .line 1938
    .end local v282    # "result":Z
    .end local v310    # "userid":I
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 1941
    .restart local v310    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1940
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v184

    .line 1942
    .local v184, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v310

    move-object/from16 v2, v184

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v280, v0

    .line 1943
    .restart local v280    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    move-object/from16 v0, p3

    move/from16 v1, v280

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1945
    const/4 v6, 0x1

    return v6

    .line 1949
    .end local v184    # "callback":Landroid/app/IStopUserCallback;
    .end local v280    # "result":I
    .end local v310    # "userid":I
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v309, v0

    .line 1951
    .local v309, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1952
    const/4 v6, 0x0

    move-object/from16 v0, v309

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1953
    const/4 v6, 0x1

    return v6

    .line 1957
    .end local v309    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v310, v0

    .line 1959
    .restart local v310    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v249, 0x1

    .line 1960
    .local v249, "orStopping":Z
    :goto_64
    move-object/from16 v0, p0

    move/from16 v1, v310

    move/from16 v2, v249

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v0

    move/16 v282, v0

    .line 1961
    .restart local v282    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    move/from16 v0, v282

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    const/4 v6, 0x1

    return v6

    .line 1959
    .end local v249    # "orStopping":Z
    .end local v282    # "result":Z
    :cond_6d
    const/16 v249, 0x0

    .restart local v249    # "orStopping":Z
    goto :goto_64

    .line 1962
    .restart local v282    # "result":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_65

    .line 1967
    .end local v249    # "orStopping":Z
    .end local v282    # "result":Z
    .end local v310    # "userid":I
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v283, v0

    .line 1969
    .local v283, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1970
    move-object/from16 v0, p3

    move-object/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1971
    const/4 v6, 0x1

    return v6

    .line 1976
    .end local v283    # "result":[I
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 1978
    .restart local v303    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v282, v0

    .line 1979
    .restart local v282    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    move/from16 v0, v282

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1981
    const/4 v6, 0x1

    return v6

    .line 1980
    :cond_6f
    const/4 v6, 0x0

    goto :goto_66

    .line 1985
    .end local v282    # "result":Z
    .end local v303    # "taskId":I
    :pswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1986
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v243

    .line 1988
    .local v243, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v243

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1989
    const/4 v6, 0x1

    return v6

    .line 1993
    .end local v243    # "observer":Landroid/app/IProcessObserver;
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1994
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v243

    .line 1996
    .restart local v243    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v243

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1997
    const/4 v6, 0x1

    return v6

    .line 2001
    .end local v243    # "observer":Landroid/app/IProcessObserver;
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2002
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v244

    .line 2004
    .local v244, "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v244

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 2005
    const/4 v6, 0x1

    return v6

    .line 2009
    .end local v244    # "observer":Landroid/app/IUidObserver;
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2011
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2010
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v244

    .line 2012
    .restart local v244    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v244

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2013
    const/4 v6, 0x1

    return v6

    .line 2018
    .end local v244    # "observer":Landroid/app/IUidObserver;
    :pswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2019
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 2020
    .restart local v259    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v178

    .line 2021
    .local v178, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    if-eqz v178, :cond_70

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2023
    const/4 v6, 0x1

    return v6

    .line 2022
    :cond_70
    const/4 v6, 0x0

    goto :goto_67

    .line 2028
    .end local v178    # "ask":Z
    .end local v259    # "pkg":Ljava/lang/String;
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 2030
    .restart local v259    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    const/16 v178, 0x1

    .line 2031
    .local v178, "ask":Z
    :goto_68
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    move/from16 v2, v178

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2032
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    const/4 v6, 0x1

    return v6

    .line 2030
    .end local v178    # "ask":Z
    :cond_71
    const/16 v178, 0x0

    .restart local v178    # "ask":Z
    goto :goto_68

    .line 2037
    .end local v178    # "ask":Z
    .end local v259    # "pkg":Ljava/lang/String;
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2038
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 2040
    .restart local v265    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v277, v0

    .line 2041
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2042
    move/from16 v0, v277

    if-eqz v0, :cond_72

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2043
    const/4 v6, 0x1

    return v6

    .line 2042
    :cond_72
    const/4 v6, 0x0

    goto :goto_69

    .line 2047
    .end local v265    # "r":Landroid/content/IIntentSender;
    .end local v277    # "res":Z
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2048
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 2050
    .restart local v265    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v277, v0

    .line 2051
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    move/from16 v0, v277

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2053
    const/4 v6, 0x1

    return v6

    .line 2052
    :cond_73
    const/4 v6, 0x0

    goto :goto_6a

    .line 2057
    .end local v265    # "r":Landroid/content/IIntentSender;
    .end local v277    # "res":Z
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2058
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 2060
    .restart local v265    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2061
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2062
    if-eqz v9, :cond_74

    .line 2063
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2064
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2068
    :goto_6b
    const/4 v6, 0x1

    return v6

    .line 2066
    :cond_74
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6b

    .line 2072
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v265    # "r":Landroid/content/IIntentSender;
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2073
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v265, v0

    .line 2075
    .restart local v265    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v261, v0

    .line 2076
    .local v261, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v265

    move-object/from16 v2, v261

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v299, v0

    .line 2077
    .restart local v299    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2078
    move-object/from16 v0, p3

    move-object/from16 v1, v299

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2079
    const/4 v6, 0x1

    return v6

    .line 2083
    .end local v261    # "prefix":Ljava/lang/String;
    .end local v265    # "r":Landroid/content/IIntentSender;
    .end local v299    # "tag":Ljava/lang/String;
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2084
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2085
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2087
    const/4 v6, 0x1

    return v6

    .line 2091
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2092
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v258, v0

    .line 2093
    .restart local v258    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v264, v0

    .line 2094
    .local v264, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2095
    move-object/from16 v0, p3

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2096
    const/4 v6, 0x1

    return v6

    .line 2100
    .end local v258    # "pids":[I
    .end local v264    # "pss":[J
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2101
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v241

    check-cast v241, Ljava/lang/CharSequence;

    .line 2102
    .local v241, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    const/16 v173, 0x1

    .line 2103
    .local v173, "always":Z
    :goto_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v241

    move/from16 v2, v173

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2105
    const/4 v6, 0x1

    return v6

    .line 2102
    .end local v173    # "always":Z
    :cond_75
    const/16 v173, 0x0

    .restart local v173    # "always":Z
    goto :goto_6c

    .line 2109
    .end local v173    # "always":Z
    .end local v241    # "msg":Ljava/lang/CharSequence;
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2110
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2112
    const/4 v6, 0x1

    return v6

    .line 2116
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/4 v6, 0x1

    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_77

    const/16 v18, 0x1

    :goto_6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_78

    const/16 v19, 0x1

    :goto_6f
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(ZZZ)V

    .line 2118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2119
    const/4 v6, 0x1

    return v6

    .line 2117
    :cond_76
    const/4 v6, 0x0

    goto :goto_6d

    :cond_77
    const/16 v18, 0x0

    goto :goto_6e

    :cond_78
    const/16 v19, 0x0

    goto :goto_6f

    .line 2123
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2125
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v194

    .line 2126
    .local v194, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v194

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v277, v0

    .line 2127
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2128
    move/from16 v0, v277

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_70
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2129
    const/4 v6, 0x1

    return v6

    .line 2128
    :cond_79
    const/4 v6, 0x0

    goto :goto_70

    .line 2133
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v194    # "destAffinity":Ljava/lang/String;
    .end local v277    # "res":Z
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2135
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v300, v0

    move-object/from16 v0, v300

    check-cast v0, Landroid/content/Intent;

    move-object/16 v300, v0

    .line 2136
    .local v300, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2137
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    move-object/16 v284, v0

    .line 2138
    .restart local v284    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7a

    .line 2139
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v284, v0

    .end local v284    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v284

    check-cast v0, Landroid/content/Intent;

    move-object/16 v284, v0

    .line 2141
    :cond_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v300

    move/from16 v3, v53

    move-object/from16 v4, v284

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v277, v0

    .line 2142
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    move/from16 v0, v277

    if-eqz v0, :cond_7b

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2144
    const/4 v6, 0x1

    return v6

    .line 2143
    :cond_7b
    const/4 v6, 0x0

    goto :goto_71

    .line 2148
    .end local v53    # "resultCode":I
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v277    # "res":Z
    .end local v300    # "target":Landroid/content/Intent;
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2150
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v271, v0

    .line 2151
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2153
    const/4 v6, 0x1

    return v6

    .line 2157
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v271    # "res":I
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2159
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v276, v0

    .line 2160
    .restart local v276    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    move-object/from16 v0, p3

    move-object/from16 v1, v276

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2162
    const/4 v6, 0x1

    return v6

    .line 2166
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v276    # "res":Ljava/lang/String;
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2167
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v245

    .line 2169
    .local v245, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v245

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    const/4 v6, 0x1

    return v6

    .line 2175
    .end local v245    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2176
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v245

    .line 2178
    .restart local v245    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v245

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2180
    const/4 v6, 0x1

    return v6

    .line 2184
    .end local v245    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2185
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2187
    const/4 v6, 0x1

    return v6

    .line 2191
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v111

    .line 2193
    .restart local v111    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    const/16 v168, 0x1

    .line 2194
    .local v168, "aboveSystem":Z
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 2195
    .restart local v267    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v111

    move/from16 v2, v168

    move-object/from16 v3, v267

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v272, v0

    .line 2196
    .local v272, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    move-object/from16 v0, p3

    move-wide/from16 v1, v272

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2198
    const/4 v6, 0x1

    return v6

    .line 2193
    .end local v168    # "aboveSystem":Z
    .end local v267    # "reason":Ljava/lang/String;
    .end local v272    # "res":J
    :cond_7c
    const/16 v168, 0x0

    .restart local v168    # "aboveSystem":Z
    goto :goto_72

    .line 2202
    .end local v111    # "pid":I
    .end local v168    # "aboveSystem":Z
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2204
    .local v157, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v275, v0

    .line 2205
    .local v275, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2206
    move-object/from16 v0, p3

    move-object/from16 v1, v275

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2207
    const/4 v6, 0x1

    return v6

    .line 2211
    .end local v157    # "requestType":I
    .end local v275    # "res":Landroid/os/Bundle;
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2213
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    move-object/16 v268, v0

    .line 2214
    .local v268, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v170

    .line 2215
    .restart local v170    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v157

    move-object/from16 v2, v268

    move-object/from16 v3, v170

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z

    move-result v0

    move/16 v277, v0

    .line 2216
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2217
    move/from16 v0, v277

    if-eqz v0, :cond_7d

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2218
    const/4 v6, 0x1

    return v6

    .line 2217
    :cond_7d
    const/4 v6, 0x0

    goto :goto_73

    .line 2222
    .end local v157    # "requestType":I
    .end local v170    # "activityToken":Landroid/os/IBinder;
    .end local v268    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v277    # "res":Z
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2224
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v151

    .line 2225
    .local v151, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v152

    check-cast v152, Landroid/app/assist/AssistStructure;

    .line 2226
    .local v152, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v153

    check-cast v153, Landroid/app/assist/AssistContent;

    .line 2227
    .local v153, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7e

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v154

    check-cast v154, Landroid/net/Uri;

    :goto_74
    move-object/from16 v149, p0

    move-object/from16 v150, v73

    .line 2228
    invoke-virtual/range {v149 .. v154}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2230
    const/4 v6, 0x1

    return v6

    .line 2227
    :cond_7e
    const/16 v154, 0x0

    .local v154, "referrer":Landroid/net/Uri;
    goto :goto_74

    .line 2234
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v151    # "extras":Landroid/os/Bundle;
    .end local v152    # "structure":Landroid/app/assist/AssistStructure;
    .end local v153    # "content":Landroid/app/assist/AssistContent;
    .end local v154    # "referrer":Landroid/net/Uri;
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2235
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2236
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 2237
    .restart local v157    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v158

    .line 2238
    .local v158, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v159

    .line 2239
    .local v159, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v160

    .local v160, "args":Landroid/os/Bundle;
    move-object/from16 v155, p0

    move-object/from16 v156, v9

    .line 2240
    invoke-virtual/range {v155 .. v160}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v277, v0

    .line 2241
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2242
    move/from16 v0, v277

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2243
    const/4 v6, 0x1

    return v6

    .line 2242
    :cond_7f
    const/4 v6, 0x0

    goto :goto_75

    .line 2247
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v157    # "requestType":I
    .end local v158    # "hint":Ljava/lang/String;
    .end local v159    # "userHandle":I
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v277    # "res":Z
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2248
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v277, v0

    .line 2249
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2250
    move/from16 v0, v277

    if-eqz v0, :cond_80

    const/4 v6, 0x1

    :goto_76
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2251
    const/4 v6, 0x1

    return v6

    .line 2250
    :cond_80
    const/4 v6, 0x0

    goto :goto_76

    .line 2255
    .end local v277    # "res":Z
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2257
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v160

    .line 2258
    .restart local v160    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v160

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v277, v0

    .line 2259
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2260
    move/from16 v0, v277

    if-eqz v0, :cond_81

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2261
    const/4 v6, 0x1

    return v6

    .line 2260
    :cond_81
    const/4 v6, 0x0

    goto :goto_77

    .line 2265
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v160    # "args":Landroid/os/Bundle;
    .end local v277    # "res":Z
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v175

    .line 2267
    .local v175, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2268
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v267, v0

    .line 2269
    .restart local v267    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v175

    move/from16 v2, v17

    move-object/from16 v3, v267

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2271
    const/4 v6, 0x1

    return v6

    .line 2275
    .end local v17    # "userId":I
    .end local v175    # "appId":I
    .end local v267    # "reason":Ljava/lang/String;
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2277
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    const/16 v172, 0x1

    .line 2278
    .local v172, "allowRestart":Z
    :goto_78
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v172

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2279
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2280
    const/4 v6, 0x1

    return v6

    .line 2277
    .end local v172    # "allowRestart":Z
    :cond_82
    const/16 v172, 0x0

    .restart local v172    # "allowRestart":Z
    goto :goto_78

    .line 2284
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v172    # "allowRestart":Z
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2286
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2288
    const/4 v6, 0x1

    return v6

    .line 2292
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2294
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2296
    const/4 v6, 0x1

    return v6

    .line 2300
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2301
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2303
    const/4 v6, 0x1

    return v6

    .line 2307
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2308
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    const/4 v6, 0x1

    return v6

    .line 2314
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v251

    .line 2317
    .local v251, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v183

    .line 2319
    .local v183, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v251

    move-object/from16 v2, v183

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v169

    .line 2320
    .local v169, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2321
    if-eqz v169, :cond_83

    .line 2322
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2323
    invoke-interface/range {v169 .. v169}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2327
    :goto_79
    const/4 v6, 0x1

    return v6

    .line 2325
    :cond_83
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_79

    .line 2331
    .end local v169    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v183    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v251    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v169

    .line 2334
    .restart local v169    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v169

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2336
    const/4 v6, 0x1

    return v6

    .line 2340
    .end local v169    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 2342
    .local v195, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v169

    .line 2343
    .restart local v169    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    if-eqz v169, :cond_84

    .line 2345
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2346
    invoke-interface/range {v169 .. v169}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2350
    :goto_7a
    const/4 v6, 0x1

    return v6

    .line 2348
    :cond_84
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7a

    .line 2354
    .end local v169    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v195    # "displayId":I
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v170

    .line 2356
    .restart local v170    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v170

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v195

    .line 2357
    .restart local v195    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2358
    move-object/from16 v0, p3

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2359
    const/4 v6, 0x1

    return v6

    .line 2363
    .end local v170    # "activityToken":Landroid/os/IBinder;
    .end local v195    # "displayId":I
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 2365
    .restart local v303    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2367
    const/4 v6, 0x1

    return v6

    .line 2371
    .end local v303    # "taskId":I
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2373
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    const/4 v6, 0x1

    return v6

    .line 2379
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    const/4 v6, 0x1

    return v6

    .line 2386
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2387
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2389
    const/4 v6, 0x1

    return v6

    .line 2393
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2394
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    const/4 v6, 0x1

    return v6

    .line 2400
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v220

    .line 2402
    .local v220, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2403
    if-eqz v220, :cond_85

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2404
    const/4 v6, 0x1

    return v6

    .line 2403
    :cond_85
    const/4 v6, 0x0

    goto :goto_7b

    .line 2408
    .end local v220    # "isInLockTaskMode":Z
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2409
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v234

    .line 2410
    .local v234, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2411
    move-object/from16 v0, p3

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2412
    const/4 v6, 0x1

    return v6

    .line 2416
    .end local v234    # "lockTaskModeState":I
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2418
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2420
    const/4 v6, 0x1

    return v6

    .line 2424
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2427
    .restart local v73    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v311, v0

    move-object/from16 v0, v311

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v311, v0

    .line 2428
    .local v311, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v311

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2429
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2430
    const/4 v6, 0x1

    return v6

    .line 2434
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v311    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 2436
    .restart local v303    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_86

    const/4 v0, 0x1

    move/16 v279, v0

    .line 2437
    .local v279, "resizeable":Z
    :goto_7c
    move-object/from16 v0, p0

    move/from16 v1, v303

    move/from16 v2, v279

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(IZ)V

    .line 2438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2439
    const/4 v6, 0x1

    return v6

    .line 2436
    .end local v279    # "resizeable":Z
    :cond_86
    const/4 v0, 0x0

    move/16 v279, v0

    .restart local v279    # "resizeable":Z
    goto :goto_7c

    .line 2443
    .end local v279    # "resizeable":Z
    .end local v303    # "taskId":I
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v303, v0

    .line 2445
    .restart local v303    # "taskId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v266, v0

    move-object/from16 v0, v266

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v266, v0

    .line 2446
    .restart local v266    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v303

    move-object/from16 v2, v266

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;)V

    .line 2447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2448
    const/4 v6, 0x1

    return v6

    .line 2452
    .end local v266    # "r":Landroid/graphics/Rect;
    .end local v303    # "taskId":I
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v201

    .line 2454
    .local v201, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v207

    .line 2455
    .local v207, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2456
    if-nez v207, :cond_87

    .line 2457
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2462
    :goto_7d
    const/4 v6, 0x1

    return v6

    .line 2459
    :cond_87
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2460
    const/4 v6, 0x0

    move-object/from16 v0, v207

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7d

    .line 2466
    .end local v201    # "filename":Ljava/lang/String;
    .end local v207    # "icon":Landroid/graphics/Bitmap;
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_88

    .line 2469
    const/16 v182, 0x0

    .line 2473
    :goto_7e
    if-nez v182, :cond_89

    const/16 v248, 0x0

    .line 2474
    :goto_7f
    move-object/from16 v0, p0

    move-object/from16 v1, v248

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2476
    const/4 v6, 0x1

    return v6

    .line 2471
    :cond_88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v182

    .restart local v182    # "bundle":Landroid/os/Bundle;
    goto :goto_7e

    .line 2473
    .end local v182    # "bundle":Landroid/os/Bundle;
    :cond_89
    new-instance v248, Landroid/app/ActivityOptions;

    move-object/from16 v0, v248

    move-object/from16 v1, v182

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .restart local v248    # "options":Landroid/app/ActivityOptions;
    goto :goto_7f

    .line 2480
    .end local v248    # "options":Landroid/app/ActivityOptions;
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2482
    .restart local v73    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_8a

    const/16 v197, 0x1

    .line 2483
    .local v197, "enable":Z
    :goto_80
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v297, v0

    .line 2484
    .restart local v297    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2485
    move/from16 v0, v297

    if-eqz v0, :cond_8b

    const/4 v6, 0x1

    :goto_81
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2486
    const/4 v6, 0x1

    return v6

    .line 2482
    .end local v197    # "enable":Z
    .end local v297    # "success":Z
    :cond_8a
    const/16 v197, 0x0

    .restart local v197    # "enable":Z
    goto :goto_80

    .line 2485
    .restart local v297    # "success":Z
    :cond_8b
    const/4 v6, 0x0

    goto :goto_81

    .line 2490
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v197    # "enable":Z
    .end local v297    # "success":Z
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2492
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v198

    .line 2493
    .local v198, "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2494
    if-eqz v198, :cond_8c

    const/4 v6, 0x1

    :goto_82
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2495
    const/4 v6, 0x1

    return v6

    .line 2494
    :cond_8c
    const/4 v6, 0x0

    goto :goto_82

    .line 2499
    .end local v73    # "token":Landroid/os/IBinder;
    .end local v198    # "enabled":Z
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2501
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    const/4 v6, 0x1

    return v6

    .line 2507
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2509
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2511
    const/4 v6, 0x1

    return v6

    .line 2515
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2517
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2518
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2519
    const/4 v6, 0x1

    return v6

    .line 2523
    .end local v73    # "token":Landroid/os/IBinder;
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2524
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    const/4 v6, 0x1

    return v6

    .line 2530
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 2532
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v203

    .line 2533
    .local v203, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v112

    move-object/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2534
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    const/4 v6, 0x1

    return v6

    .line 2539
    .end local v112    # "uid":I
    .end local v203    # "firstPacket":[B
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v162

    .line 2541
    .local v162, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 2542
    .restart local v112    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v164

    .line 2543
    .local v164, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v166

    .local v166, "reportPackage":Ljava/lang/String;
    move-object/from16 v161, p0

    move/from16 v163, v112

    .line 2544
    invoke-virtual/range {v161 .. v166}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    const/4 v6, 0x1

    return v6

    .line 2550
    .end local v112    # "uid":I
    .end local v162    # "procName":Ljava/lang/String;
    .end local v164    # "maxMemSize":J
    .end local v166    # "reportPackage":Ljava/lang/String;
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 2552
    .restart local v142    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2554
    const/4 v6, 0x1

    return v6

    .line 2558
    .end local v142    # "path":Ljava/lang/String;
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2559
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2561
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d

    const/16 v223, 0x1

    .line 2562
    .local v223, "keepAwake":Z
    :goto_83
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v223

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2563
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2564
    const/4 v6, 0x1

    return v6

    .line 2561
    .end local v223    # "keepAwake":Z
    :cond_8d
    const/16 v223, 0x0

    .restart local v223    # "keepAwake":Z
    goto :goto_83

    .line 2568
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v223    # "keepAwake":Z
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2570
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v250

    .line 2571
    .local v250, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v250

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2573
    const/4 v6, 0x1

    return v6

    .line 2577
    .end local v17    # "userId":I
    .end local v250    # "packages":[Ljava/lang/String;
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2579
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2581
    const/4 v6, 0x1

    return v6

    .line 2585
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2586
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 2587
    .restart local v259    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2588
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v271, v0

    .line 2589
    .restart local v271    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2590
    move-object/from16 v0, p3

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2591
    const/4 v6, 0x1

    return v6

    .line 2595
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v259    # "pkg":Ljava/lang/String;
    .end local v271    # "res":I
    :pswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 2597
    .restart local v120    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2598
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v224

    .line 2599
    .local v224, "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v17

    move/from16 v3, v224

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v277, v0

    .line 2600
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2601
    move/from16 v0, v277

    if-eqz v0, :cond_8e

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2602
    const/4 v6, 0x1

    return v6

    .line 2601
    :cond_8e
    const/4 v6, 0x0

    goto :goto_84

    .line 2606
    .end local v17    # "userId":I
    .end local v120    # "process":Ljava/lang/String;
    .end local v224    # "level":I
    .end local v277    # "res":Z
    :pswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 2608
    .restart local v73    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v277, v0

    .line 2609
    .restart local v277    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2610
    move/from16 v0, v277

    if-eqz v0, :cond_8f

    const/4 v6, 0x1

    :goto_85
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2611
    const/4 v6, 0x1

    return v6

    .line 2610
    :cond_8f
    const/4 v6, 0x0

    goto :goto_85

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_70
        :pswitch_1
        :pswitch_64
        :pswitch_65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_19
        :pswitch_1a
        :pswitch_1d
        :pswitch_1f
        :pswitch_23
        :pswitch_2b
        :pswitch_0
        :pswitch_2d
        :pswitch_36
        :pswitch_0
        :pswitch_37
        :pswitch_39
        :pswitch_3a
        :pswitch_b
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_18
        :pswitch_0
        :pswitch_0
        :pswitch_67
        :pswitch_68
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_42
        :pswitch_4f
        :pswitch_50
        :pswitch_56
        :pswitch_57
        :pswitch_59
        :pswitch_5b
        :pswitch_5d
        :pswitch_5e
        :pswitch_69
        :pswitch_62
        :pswitch_73
        :pswitch_25
        :pswitch_48
        :pswitch_1c
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_6a
        :pswitch_8
        :pswitch_6b
        :pswitch_3d
        :pswitch_4d
        :pswitch_4e
        :pswitch_47
        :pswitch_58
        :pswitch_43
        :pswitch_2c
        :pswitch_63
        :pswitch_28
        :pswitch_5c
        :pswitch_76
        :pswitch_6e
        :pswitch_27
        :pswitch_26
        :pswitch_29
        :pswitch_78
        :pswitch_7d
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_54
        :pswitch_55
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_6
        :pswitch_86
        :pswitch_71
        :pswitch_74
        :pswitch_87
        :pswitch_4
        :pswitch_10
        :pswitch_5
        :pswitch_2a
        :pswitch_89
        :pswitch_72
        :pswitch_8a
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_a1
        :pswitch_1b
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_a8
        :pswitch_a9
        :pswitch_9d
        :pswitch_0
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_aa
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_0
        :pswitch_75
        :pswitch_38
        :pswitch_3e
        :pswitch_77
        :pswitch_6f
        :pswitch_a0
        :pswitch_b3
        :pswitch_b4
        :pswitch_66
        :pswitch_c
        :pswitch_b5
        :pswitch_3b
        :pswitch_ab
        :pswitch_2
        :pswitch_9f
        :pswitch_b7
        :pswitch_b8
        :pswitch_a2
        :pswitch_b9
        :pswitch_ba
        :pswitch_0
        :pswitch_ac
        :pswitch_bb
        :pswitch_bd
        :pswitch_b6
        :pswitch_c1
        :pswitch_88
        :pswitch_c2
        :pswitch_c7
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_33
        :pswitch_31
        :pswitch_8c
        :pswitch_8d
        :pswitch_c4
        :pswitch_c3
        :pswitch_c5
        :pswitch_c6
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_3c
        :pswitch_0
        :pswitch_ca
        :pswitch_c8
        :pswitch_e5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_ad
        :pswitch_9e
        :pswitch_32
        :pswitch_cb
        :pswitch_cc
        :pswitch_ce
        :pswitch_d0
        :pswitch_d3
        :pswitch_7
        :pswitch_8e
        :pswitch_20
        :pswitch_cd
        :pswitch_cf
        :pswitch_d
        :pswitch_8b
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_9
        :pswitch_dc
        :pswitch_b1
        :pswitch_3
        :pswitch_21
        :pswitch_22
        :pswitch_e
        :pswitch_f
        :pswitch_dd
        :pswitch_d6
        :pswitch_be
        :pswitch_d7
        :pswitch_5a
        :pswitch_35
        :pswitch_0
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_de
        :pswitch_c9
        :pswitch_34
        :pswitch_d4
        :pswitch_bc
        :pswitch_d5
        :pswitch_d1
        :pswitch_df
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_6c
        :pswitch_6d
        :pswitch_e4
        :pswitch_d2
        :pswitch_e3
        :pswitch_b2
        :pswitch_a6
        :pswitch_a7
        :pswitch_bf
        :pswitch_c0
        :pswitch_e6
        :pswitch_24
    .end packed-switch
.end method
