.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static aes:I


# instance fields
.field protected aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field public aeB:I

.field public aeC:Z

.field public aeD:I

.field public aeE:I

.field public aeF:Landroid/view/WindowManager$LayoutParams;

.field public aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

.field private aeH:Landroid/os/Bundle;

.field public final aet:Landroid/app/Activity;

.field private final aeu:Lcom/google/android/libraries/gsa/launcherclient/g;

.field public final aev:Lcom/google/android/libraries/gsa/launcherclient/b;

.field public final aew:Lcom/google/android/libraries/gsa/launcherclient/b;

.field public final aex:Lcom/google/android/libraries/gsa/launcherclient/i;

.field public final aey:Lcom/google/android/libraries/gsa/launcherclient/a;

.field public final aez:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    const/4 v0, -0x1

    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/g;Lcom/google/android/libraries/gsa/launcherclient/f;)V
    .locals 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "Client"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    .line 145
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "Service"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aew:Lcom/google/android/libraries/gsa/launcherclient/b;

    .line 150
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/d;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/gsa/launcherclient/d;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aez:Landroid/content/BroadcastReceiver;

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    .line 171
    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    .line 173
    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeD:I

    .line 210
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    .line 211
    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeu:Lcom/google/android/libraries/gsa/launcherclient/g;

    .line 213
    new-instance p2, Lcom/google/android/libraries/gsa/launcherclient/i;

    const/16 v1, 0x41

    invoke-direct {p2, p1, v1}, Lcom/google/android/libraries/gsa/launcherclient/i;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aex:Lcom/google/android/libraries/gsa/launcherclient/i;

    .line 215
    iget p2, p3, Lcom/google/android/libraries/gsa/launcherclient/f;->options:I

    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    .line 217
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/a;->I(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/a;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    .line 218
    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/google/android/libraries/gsa/launcherclient/a;->aem:Ljava/lang/ref/WeakReference;

    iget-object p2, p2, Lcom/google/android/libraries/gsa/launcherclient/a;->ael:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 221
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 223
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt p3, v1, :cond_0

    .line 224
    const-string p3, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 226
    :cond_0
    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aez:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    sget p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    if-gtz p2, :cond_1

    .line 228
    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->K(Landroid/content/Context;)V

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 238
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    .line 239
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    .line 240
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    .line 241
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    .line 244
    :cond_2
    return-void
.end method

.method static J(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 786
    nop

    .line 787
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "app://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 788
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "v"

    .line 789
    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "cv"

    .line 790
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 791
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static K(Landroid/content/Context;)V
    .locals 2

    .line 899
    nop

    .line 901
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 902
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->J(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 903
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 906
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "service.api.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    .line 908
    return-void

    .line 904
    :cond_1
    :goto_0
    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    return-void
.end method

.method static synthetic L(Landroid/content/Context;)V
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->K(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/i;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aex:Lcom/google/android/libraries/gsa/launcherclient/i;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->bm(I)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/a;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    return-object p0
.end method

.method private bm(I)V
    .locals 2

    .line 751
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeD:I

    if-eq v0, p1, :cond_1

    .line 752
    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeD:I

    .line 753
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeu:Lcom/google/android/libraries/gsa/launcherclient/g;

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/g;->p(Z)V

    .line 757
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeD:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/g;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeu:Lcom/google/android/libraries/gsa/launcherclient/g;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Lcom/google/android/libraries/gsa/launcherclient/b;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aew:Lcom/google/android/libraries/gsa/launcherclient/b;

    return-object p0
.end method


# virtual methods
.method public final J(Z)V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "hideOverlay"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->c(Ljava/lang/String;Z)V

    .line 586
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 589
    nop

    .line 588
    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    return-void

    .line 590
    :catch_0
    move-exception p1

    .line 596
    :cond_0
    return-void
.end method

.method public final K(Z)V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "showOverlay"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->c(Ljava/lang/String;Z)V

    .line 627
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    return-void

    .line 630
    :catch_0
    move-exception p1

    .line 636
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    .line 452
    return-void

    .line 454
    :cond_0
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    .line 455
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ih()V

    return-void

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_2

    .line 459
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_0

    .line 460
    :catch_0
    move-exception p1

    .line 465
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 467
    :cond_2
    return-void
.end method

.method final b(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 4

    .line 736
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aew:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "Connected"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->c(Ljava/lang/String;Z)V

    .line 740
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 741
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p1, :cond_1

    .line 742
    invoke-direct {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->bm(I)V

    return-void

    .line 744
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ih()V

    .line 748
    :cond_2
    return-void
.end method

.method public final bl(I)V
    .locals 3

    .line 606
    if-lez p1, :cond_1

    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_1

    const/4 v0, 0x1

    shl-int/lit8 v1, p1, 0x2

    or-int/2addr v0, v1

    .line 607
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v2, "hideOverlay"

    invoke-virtual {v1, v2, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 608
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_0

    .line 610
    :try_start_0
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    return-void

    .line 611
    :catch_0
    move-exception p1

    .line 617
    :cond_0
    return-void

    .line 606
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid duration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(F)V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "updateMove"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 560
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    return-void

    .line 563
    :catch_0
    move-exception p1

    .line 569
    :cond_0
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 4

    .line 709
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "setPrivateOptions : "

    .line 711
    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, ","

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 709
    move-object v1, v2

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 712
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeH:Landroid/os/Bundle;

    .line 713
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ik()V

    .line 714
    return-void
.end method

.method public final ih()V
    .locals 4

    .line 470
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_5

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-direct {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    iput-object p0, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->client:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowManager:Landroid/view/WindowManager;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->windowShift:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;->window:Landroid/view/Window;

    .line 476
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 477
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_0

    .line 479
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    const-string v1, "layout_params"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 481
    const-string v1, "configuration"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 482
    const-string v1, "client_options"

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeE:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 483
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeH:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeH:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeG:Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$OverlayCallbacks;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 488
    :goto_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    .line 489
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    return-void

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    return-void

    .line 495
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 503
    :cond_5
    return-void
.end method

.method public final ii()V
    .locals 4

    .line 516
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "startMove"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 517
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 526
    :cond_0
    return-void
.end method

.method public final ij()V
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "endMove"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 537
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 546
    :cond_0
    return-void
.end method

.method public final ik()V
    .locals 2

    .line 729
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 730
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->ih()V

    .line 732
    :cond_0
    return-void
.end method

.method public final isConnected()Z
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 252
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-eqz v0, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "attachedToWindow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 256
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->a(Landroid/view/WindowManager$LayoutParams;)V

    .line 257
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 305
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-eqz v0, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    .line 310
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 312
    :try_start_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_0

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    goto :goto_0

    .line 317
    :catch_0
    move-exception v0

    .line 323
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 324
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 278
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-eqz v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    .line 283
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    .line 285
    :try_start_0
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 286
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 296
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 297
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 332
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-eqz v0, :cond_0

    .line 333
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/a;->I(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->reconnect()V

    .line 339
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    .line 340
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    goto :goto_0

    .line 343
    :catch_0
    move-exception v0

    .line 349
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 350
    return-void
.end method

.method public final onStop()V
    .locals 3

    .line 358
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-eqz v0, :cond_0

    .line 359
    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/gsa/launcherclient/a;->I(Z)V

    .line 365
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aex:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->il()V

    .line 367
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    .line 368
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeF:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 377
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "stateChanged "

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeB:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/gsa/launcherclient/b;->f(Ljava/lang/String;I)V

    .line 378
    return-void
.end method

.method public final reconnect()V
    .locals 2

    .line 434
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeC:Z

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aey:Lcom/google/android/libraries/gsa/launcherclient/a;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/a;->im()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aex:Lcom/google/android/libraries/gsa/launcherclient/i;

    invoke-virtual {v0}, Lcom/google/android/libraries/gsa/launcherclient/i;->im()Z

    move-result v0

    if-nez v0, :cond_2

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aet:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/e;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/e;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 448
    :cond_2
    return-void
.end method

.method public final startSearch([BLandroid/os/Bundle;)Z
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aev:Lcom/google/android/libraries/gsa/launcherclient/b;

    const-string v1, "startSearch"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 671
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aes:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 672
    return v2

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_1

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->aeA:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 677
    :catch_0
    move-exception p1

    .line 678
    const-string p2, "DrawerOverlayClient"

    const-string v0, "Error starting session for search"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    :cond_1
    return v2
.end method
