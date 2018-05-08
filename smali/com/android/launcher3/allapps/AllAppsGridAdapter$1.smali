.class Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$1;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->mMarketSearchIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    .line 270
    return-void
.end method
