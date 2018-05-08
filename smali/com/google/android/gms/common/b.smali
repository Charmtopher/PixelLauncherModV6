.class public Lcom/google/android/gms/common/b;
.super Lcom/google/android/gms/common/d;


# static fields
.field private static final Ih:Lcom/google/android/gms/common/b;

.field public static final Ii:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/b;

    invoke-direct {v0}, Lcom/google/android/gms/common/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/b;->Ih:Lcom/google/android/gms/common/b;

    sget v0, Lcom/google/android/gms/common/d;->Ii:I

    sput v0, Lcom/google/android/gms/common/b;->Ii:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/d;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/16 v0, 0x12

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/I;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, ""

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "GooglePlayServicesUpdatingDialog"

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-object v0
.end method

.method static a(Landroid/content/Context;ILcom/google/android/gms/common/internal/J;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010309

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Theme.Dialog.Alert"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/I;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/I;->j(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/I;->f(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/bP;)Lcom/google/android/gms/internal/bO;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/bO;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/bO;-><init>(Lcom/google/android/gms/internal/bP;)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p0, v1, Lcom/google/android/gms/internal/bO;->mContext:Landroid/content/Context;

    const-string v0, "com.google.android.gms"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/f;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bP;->hi()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/bO;->unregister()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v1
.end method

.method static a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    instance-of v0, p0, Landroid/support/v4/app/n;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/support/v4/app/n;

    invoke-virtual {p0}, Landroid/support/v4/app/n;->ac()Landroid/support/v4/app/u;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/h;->b(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/h;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/h;->a(Landroid/support/v4/app/u;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/gms/common/a;->a(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/gms/common/a;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/google/android/gms/common/a;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/content/Context;ILandroid/app/PendingIntent;)V
    .locals 7

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p2, v1, :cond_0

    new-instance p2, Lcom/google/android/gms/common/c;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/common/c;-><init>(Lcom/google/android/gms/common/b;Landroid/content/Context;)V

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    if-nez p3, :cond_2

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    const-string p1, "GoogleApiAvailability"

    const-string p2, "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/I;->g(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/I;->i(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/common/a/g;->C(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/google/android/gms/common/a/k;->gv()Z

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->E(Z)V

    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$drawable;->common_full_open_on_phone:I

    sget v2, Lcom/google/android/gms/R$string;->common_open_on_phone:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p3

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/support/v4/app/ar;

    invoke-direct {v4, p1}, Landroid/support/v4/app/ar;-><init>(Landroid/content/Context;)V

    iget-object v5, v4, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    const v6, 0x108008a

    iput v6, v5, Landroid/app/Notification;->icon:I

    sget v5, Lcom/google/android/gms/R$string;->common_google_play_services_notification_ticker:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/support/v4/app/ar;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ar;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v3, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    iput-wide v4, v6, Landroid/app/Notification;->when:J

    iget-object v4, v3, Landroid/support/v4/app/ar;->hu:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    iput-object p3, v3, Landroid/support/v4/app/ar;->gP:Landroid/app/PendingIntent;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/ar;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ar;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/support/v4/app/ar;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/ar;

    move-result-object p3

    iput-boolean v0, p3, Landroid/support/v4/app/ar;->hh:Z

    new-instance v0, Landroid/support/v4/app/aq;

    invoke-direct {v0}, Landroid/support/v4/app/aq;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/aq;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/aq;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v4/app/ar;->a(Landroid/support/v4/app/as;)Landroid/support/v4/app/ar;

    move-result-object p3

    new-instance v0, Landroid/support/v4/app/at;

    invoke-direct {v0, p3}, Landroid/support/v4/app/at;-><init>(Landroid/support/v4/app/ar;)V

    invoke-virtual {v0}, Landroid/support/v4/app/at;->build()Landroid/app/Notification;

    move-result-object p3

    :goto_0
    packed-switch p2, :pswitch_data_0

    const p2, 0x9b6d

    goto :goto_1

    :pswitch_0
    const/16 p2, 0x28c4

    sget-object v0, Lcom/google/android/gms/common/f;->Iq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static fm()Lcom/google/android/gms/common/b;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/b;->Ih:Lcom/google/android/gms/common/b;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string v0, "d"

    invoke-super {p0, p1, p2, v0}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/internal/J;->a(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/J;

    move-result-object p3

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/J;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroid/app/Activity;Lcom/google/android/gms/internal/bU;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 1

    const-string v0, "d"

    invoke-super {p0, p1, p3, v0}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/J;->a(Lcom/google/android/gms/internal/bU;Landroid/content/Intent;)Lcom/google/android/gms/common/internal/J;

    move-result-object p2

    invoke-static {p1, p3, p2, p4}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILcom/google/android/gms/common/internal/J;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string p3, "GooglePlayServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/common/b;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final a(Landroid/content/Context;Lcom/google/android/gms/common/ConnectionResult;I)Z
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->fk()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/gms/common/ConnectionResult;->Ie:Landroid/app/PendingIntent;

    goto :goto_0

    :cond_0
    iget v0, p2, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-super {p0, p1, v0, v1}, Lcom/google/android/gms/common/d;->a(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget p2, p2, Lcom/google/android/gms/common/ConnectionResult;->Id:I

    invoke-static {p1, v0, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final aF(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/d;->aF(I)Z

    move-result p1

    return p1
.end method

.method public final aG(I)Landroid/content/Intent;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/d;->aG(I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final aH(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/d;->aH(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "n"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;IILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/b;->a(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void
.end method

.method public final d(Landroid/content/Context;I)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/common/d;->d(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public final t(Landroid/content/Context;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/gms/common/d;->t(Landroid/content/Context;)I

    move-result p1

    return p1
.end method
