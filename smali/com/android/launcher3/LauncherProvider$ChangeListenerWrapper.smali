.class Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1128
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;
    .locals 0

    .line 1128
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v0, :cond_0

    .line 1138
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1143
    :pswitch_0
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    goto :goto_0

    .line 1140
    :pswitch_1
    iget-object p1, p0, Lcom/android/launcher3/LauncherProvider$ChangeListenerWrapper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {p1}, Lcom/android/launcher3/LauncherProviderChangeListener;->onLauncherProviderChanged()V

    .line 1141
    nop

    .line 1147
    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
