.class Lcom/android/launcher3/Workspace$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;I)V
    .locals 0

    .line 3063
    iput-object p1, p0, Lcom/android/launcher3/Workspace$13;->this$0:Lcom/android/launcher3/Workspace;

    iput p2, p0, Lcom/android/launcher3/Workspace$13;->val$appWidgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 0

    .line 3067
    instance-of p2, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget p1, p1, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    iget p2, p0, Lcom/android/launcher3/Workspace$13;->val$appWidgetId:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
