.class public final synthetic Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;

.field private final synthetic f$1:Lcom/android/launcher3/BaseDraggingActivity;

.field private final synthetic f$2:I

.field private final synthetic f$3:Lcom/android/quickstep/views/TaskThumbnailView;

.field private final synthetic f$4:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$0:Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;

    iput-object p2, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$1:Lcom/android/launcher3/BaseDraggingActivity;

    iput p3, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$2:I

    iput-object p4, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$3:Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object p5, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$4:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$0:Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;

    iget-object v1, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$1:Lcom/android/launcher3/BaseDraggingActivity;

    iget v2, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$2:I

    iget-object v3, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$3:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v4, p0, Lcom/android/quickstep/-$$Lambda$TaskSystemShortcut$SplitScreen$OgwmwyUybEU3MmlsAFLaClPYbzQ;->f$4:Lcom/android/quickstep/views/TaskView;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;->lambda$getOnClickListener$1(Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;Lcom/android/launcher3/BaseDraggingActivity;ILcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V

    return-void
.end method
