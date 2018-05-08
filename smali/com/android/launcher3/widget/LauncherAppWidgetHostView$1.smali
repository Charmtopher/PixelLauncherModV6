.class Lcom/android/launcher3/widget/LauncherAppWidgetHostView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView$1;->this$0:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->switchToErrorView()V

    .line 376
    return-void
.end method
