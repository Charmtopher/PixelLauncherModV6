.class public Lcom/google/android/apps/nexuslauncher/reflection/f/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/l;
.implements Lcom/google/research/reflection/c/a;


# instance fields
.field private DE:Z

.field private DF:J

.field private DG:Z

.field private DH:J

.field private final DI:Ljava/util/List;

.field private final mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 167
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DF:J

    .line 53
    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DH:J

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DI:Ljava/util/List;

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->mContext:Landroid/content/Context;

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DF:J

    .line 53
    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DH:J

    .line 58
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DI:Ljava/util/List;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 69
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DE:Z

    .line 70
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DG:Z

    .line 71
    return-void
.end method

.method private a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/c/c;

    .line 81
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ez()Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/research/reflection/c/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method private e(J)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->n(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/f/j;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/reflection/f/j;->g(J)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/c/c;)Lcom/google/research/reflection/c/a;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DI:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p0
.end method

.method public final dV()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    return-void
.end method

.method public final eo()V
    .locals 6

    .line 94
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DF:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 95
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    .line 96
    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aid:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 97
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;-><init>()V

    iget-wide v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DF:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->h(J)Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/d;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 98
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DE:Z

    if-eqz v1, :cond_0

    const-string v1, "headset_wired_in"

    goto :goto_0

    :cond_0
    const-string v1, "headset_wired_out"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->p(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 99
    const-string v1, "HeadsetStatusSensor"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->q(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->e(J)V

    .line 101
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 103
    :cond_1
    iget-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DH:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 104
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>()V

    .line 105
    sget-object v1, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->aid:Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 106
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;-><init>()V

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DH:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->h(J)Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a(Lcom/google/research/reflection/signal/d;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 107
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DG:Z

    if-eqz v1, :cond_2

    const-string v1, "headset_bluetooth_in"

    goto :goto_1

    :cond_2
    const-string v1, "headset_bluetooth_out"

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->p(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 108
    const-string v1, "HeadsetStatusSensor"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->q(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->e(J)V

    .line 110
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->a(Lcom/google/android/apps/nexuslauncher/reflection/g/c;)V

    .line 117
    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 124
    const-string p1, "state"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 125
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->x(Z)V

    .line 128
    return-void

    .line 130
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->x(Z)V

    .line 133
    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 134
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_3

    .line 135
    const-string p1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 136
    if-eqz p1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->y(Z)V

    .line 139
    return-void

    .line 141
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->y(Z)V

    .line 145
    :cond_3
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final x(Z)V
    .locals 2

    .line 148
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DE:Z

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DF:J

    .line 150
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->eo()V

    .line 151
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->c(J)V

    .line 152
    return-void
.end method

.method protected final y(Z)V
    .locals 2

    .line 155
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DG:Z

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->DH:J

    .line 157
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->eo()V

    .line 158
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/f/a;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->k(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/g;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->c(J)V

    .line 159
    return-void
.end method
