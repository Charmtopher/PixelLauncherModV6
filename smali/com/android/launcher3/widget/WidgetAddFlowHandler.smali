.class public Lcom/android/launcher3/widget/WidgetAddFlowHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    new-instance v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler$1;

    invoke-direct {v0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final getProviderInfo(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public needsConfigure()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final startBindFlow(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)V
    .locals 1

    .line 55
    invoke-static {p2, p0, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p3

    iput-object p3, p1, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 56
    iget-object p3, p1, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 57
    invoke-virtual {p3, p1, p2, v0, p4}, Lcom/android/launcher3/LauncherAppWidgetHost;->startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    .line 58
    return-void
.end method

.method public startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    invoke-static {p2, p0, p3}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object p3

    iput-object p3, p1, Lcom/android/launcher3/Launcher;->mPendingRequestArgs:Lcom/android/launcher3/util/PendingRequestArgs;

    .line 78
    iget-object p3, p1, Lcom/android/launcher3/Launcher;->mAppWidgetHost:Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-virtual {p3, p1, p2, p4}, Lcom/android/launcher3/LauncherAppWidgetHost;->startConfigActivity(Lcom/android/launcher3/BaseActivity;II)V

    .line 79
    const/4 p1, 0x1

    return p1
.end method

.method public final startConfigActivity(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetInfo;I)Z
    .locals 1

    .line 65
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/android/launcher3/Launcher;ILcom/android/launcher3/ItemInfo;I)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->mProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, p1, p2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    return-void
.end method
