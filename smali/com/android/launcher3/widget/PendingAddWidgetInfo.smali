.class public Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "SourceFile"


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public icon:I

.field public info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

.field public previewImage:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 38
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    .line 43
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 44
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->user:Landroid/os/UserHandle;

    .line 45
    iget-object v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 46
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->previewImage:I

    .line 47
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->icon:I

    .line 49
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 50
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 51
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 52
    iget p1, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput p1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    .line 53
    return-void
.end method


# virtual methods
.method public getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;
    .locals 2

    .line 56
    new-instance v0, Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    iget-object v1, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-object v0
.end method
